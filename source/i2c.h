#ifndef I2C_H_
#define I2C_H_

#include "pin_mux.h"
#include "fsl_lpi2c.h"
#include "clock_config.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/
#define EXAMPLE_I2C_MASTER_BASE (LPI2C2_BASE)

//#define I2C_MASTER_CLOCK_FREQUENCY (12000000)
/* Select USB1 PLL (480 MHz) as master lpi2c clock source */
#define LPI2C_CLOCK_SOURCE_SELECT (0U)
/* Clock divider for master lpi2c clock source */
#define LPI2C_CLOCK_SOURCE_DIVIDER (5U)
/* Get frequency of lpi2c clock */
#define LPI2C_CLOCK_FREQUENCY ((CLOCK_GetFreq(kCLOCK_Usb1PllClk) / 8) / (LPI2C_CLOCK_SOURCE_DIVIDER + 1U))

#define LPI2C_MASTER_CLOCK_FREQUENCY LPI2C_CLOCK_FREQUENCY

#define EXAMPLE_I2C_MASTER ((LPI2C_Type *)EXAMPLE_I2C_MASTER_BASE)

#define I2C_MASTER_SLAVE_ADDR_7BIT 0x7EU
#define I2C_BAUDRATE 100000U
#define I2C_DATA_LENGTH 33U


void I2C_Init();
status_t I2C_Transfer(uint8_t deviceAddress,uint8_t *txbuffer,uint8_t size);


#endif /* I2C_H_ */
