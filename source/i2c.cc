#include "i2c.h"

/*******************************************************************************
 * Variables
 ******************************************************************************/

AT_NONCACHEABLE_SECTION(uint8_t g_master_txBuff[I2C_DATA_LENGTH]);
AT_NONCACHEABLE_SECTION(uint8_t g_master_rxBuff[I2C_DATA_LENGTH]);
AT_NONCACHEABLE_SECTION(lpi2c_master_edma_handle_t g_m_edma_handle);
edma_handle_t g_edmaTxHandle;
edma_handle_t g_edmaRxHandle;
volatile bool g_MasterCompletionFlag = false;
lpi2c_master_config_t masterConfig;
lpi2c_master_transfer_t masterXfer = {0};
edma_config_t userConfig;

/*******************************************************************************
 * Code
 ******************************************************************************/

static void lpi2c_master_callback(LPI2C_Type *base, lpi2c_master_edma_handle_t *handle, status_t status, void *userData)
{
    /* Signal transfer success when received success status. */
    if (status == kStatus_Success)
    {
        g_MasterCompletionFlag = true;
    }
}


void I2C_Init() {
    /*Clock setting for LPI2C*/
    CLOCK_SetMux(kCLOCK_Lpi2cMux, LPI2C_CLOCK_SOURCE_SELECT);
    CLOCK_SetDiv(kCLOCK_Lpi2cDiv, LPI2C_CLOCK_SOURCE_DIVIDER);

#if defined(FSL_FEATURE_SOC_DMAMUX_COUNT) && FSL_FEATURE_SOC_DMAMUX_COUNT
    /* DMAMUX init */
    DMAMUX_Init(EXAMPLE_LPI2C_MASTER_DMA_MUX);

    DMAMUX_SetSource(EXAMPLE_LPI2C_MASTER_DMA_MUX, LPI2C_TRANSMIT_DMA_CHANNEL,
                     LPI2CMASTER_TRANSMIT_EDMA_REQUEST_SOURCE);
    DMAMUX_EnableChannel(EXAMPLE_LPI2C_MASTER_DMA_MUX, LPI2C_TRANSMIT_DMA_CHANNEL);

    DMAMUX_SetSource(EXAMPLE_LPI2C_MASTER_DMA_MUX, LPI2C_RECEIVE_DMA_CHANNEL, LPI2CMASTER_RECEIVE_EDMA_REQUEST_SOURCE);
    DMAMUX_EnableChannel(EXAMPLE_LPI2C_MASTER_DMA_MUX, LPI2C_RECEIVE_DMA_CHANNEL);
#endif

    /* EDMA init */
    /*
     * userConfig.enableRoundRobinArbitration = false;
     * userConfig.enableHaltOnError = true;
     * userConfig.enableContinuousLinkMode = false;
     * userConfig.enableDebugMode = false;
     */
    EDMA_GetDefaultConfig(&userConfig);
    EDMA_Init(EXAMPLE_LPI2C_MASTER_DMA, &userConfig);

    /*
     * masterConfig.debugEnable = false;
     * masterConfig.ignoreAck = false;
     * masterConfig.pinConfig = kLPI2C_2PinOpenDrain;
     * masterConfig.baudRate_Hz = 100000U;
     * masterConfig.busIdleTimeout_ns = 0;
     * masterConfig.pinLowTimeout_ns = 0;
     * masterConfig.sdaGlitchFilterWidth_ns = 0;
     * masterConfig.sclGlitchFilterWidth_ns = 0;
     */
    LPI2C_MasterGetDefaultConfig(&masterConfig);

    /* Change the default baudrate configuration */
    masterConfig.baudRate_Hz = I2C_BAUDRATE;

    /* Initialize the LPI2C master peripheral */
    LPI2C_MasterInit(EXAMPLE_I2C_MASTER, &masterConfig, LPI2C_MASTER_CLOCK_FREQUENCY);

    /* Create the EDMA channel handles */
    EDMA_CreateHandle(&g_edmaTxHandle, EXAMPLE_LPI2C_MASTER_DMA, LPI2C_TRANSMIT_DMA_CHANNEL);
    EDMA_CreateHandle(&g_edmaRxHandle, EXAMPLE_LPI2C_MASTER_DMA, LPI2C_RECEIVE_DMA_CHANNEL);

    /* Create the LPI2C master DMA driver handle */
    LPI2C_MasterCreateEDMAHandle(EXAMPLE_I2C_MASTER, &g_m_edma_handle, &g_edmaRxHandle, &g_edmaTxHandle,
                                 lpi2c_master_callback, NULL);
}

status_t I2C_Transfer(uint8_t deviceAddress, uint8_t *txbuffer, uint8_t size) {

	status_t reVal = kStatus_Fail;

	masterXfer.slaveAddress   = deviceAddress; // I2C_MASTER_SLAVE_ADDR_7BIT;
	masterXfer.direction      = kLPI2C_Write;
	masterXfer.subaddress     = 0; //(uint32_t)deviceAddress;
	masterXfer.subaddressSize = 0; //1;
	masterXfer.data           = txbuffer;
	masterXfer.dataSize       = size;
	masterXfer.flags          = kLPI2C_TransferDefaultFlag;

	/* Send master non-blocking data to slave */
	reVal = LPI2C_MasterTransferEDMA(EXAMPLE_I2C_MASTER, &g_m_edma_handle, &masterXfer);

	if (reVal != kStatus_Success)
	{
		return reVal;
	}

	/*  Wait for transfer completed. */
	while (!g_MasterCompletionFlag)
	{
	}
	g_MasterCompletionFlag = false;

	return reVal;
}
