#include "command_responder.h"
#include "board.h"
//#include "oled.h"

#define EXAMPLE_LED_GPIO BOARD_USER_LED_GPIO
#define EXAMPLE_LED_GPIO_PIN BOARD_USER_LED_GPIO_PIN

//bool g_oled_initialized = false;

void RespondToCommand(tflite::ErrorReporter* error_reporter,
                      int32_t current_time, const char* found_command,
                      uint8_t score, bool is_new_command) {

//  if (!g_oled_initialized) {
//	  OLED_Init();
//	  g_oled_initialized = true;
//  }

  static int count = 0;

  ++count;

  if (count & 1) {
      GPIO_PinWrite(EXAMPLE_LED_GPIO, EXAMPLE_LED_GPIO_PIN, 0U);
  } else {
	  GPIO_PinWrite(EXAMPLE_LED_GPIO, EXAMPLE_LED_GPIO_PIN, 1U);
  }

  if (is_new_command) {
    TF_LITE_REPORT_ERROR(error_reporter, "Heard %s (%d) @%dms", found_command,
                         score, current_time);

//    OLED_Clear_Screen();
//    OLED_PrintText(3, 24, (const uint8_t*) found_command);
  }
}
