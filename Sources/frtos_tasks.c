
/*!
** @}
*/
/*
** ###################################################################
**
**     This file was created by Processor Expert 10.3 [05.09]
**     for the Freescale Kinetis series of microcontrollers.
**
** ###################################################################
*/

/* Begin of <includes> initialization, DO NOT MODIFY LINES BELOW */

#include "TSK1.h"
#include "FRTOS1.h"
#include "frtos_tasks.h"

/* End <includes> initialization, DO NOT MODIFY LINES ABOVE */
#include "LED_Blue.h"
#include "Events.h"
#include "AS2.h"

typedef enum {
	AT_OK,
	AT_ERROR, 
	AT_IPD, 
	AT_INCOMPLETE
} AT_CODE_t;

typedef struct
{
	AT_CODE_t code;
	uint16_t size;
	uint8_t *data;
} serial_response_t;

typedef struct
{
	uint8_t line;
} QueueItem_t;

QueueHandle_t fila;

serial_response_t currentResponse;

static uint8_t APP_EspMsgBuf[512]; /* buffer for messages from ESP8266 */


static portTASK_FUNCTION(LEDTask, pvParameters) {

  for(;;) {
	  LED_Blue_Neg();
	  vTaskDelay(1000/portTICK_RATE_MS);
  }
  vTaskDelete(LEDTask);
}



static portTASK_FUNCTION(SoundTask, pvParameters) {
	  uint16_t sent;
	  
	  AS2_SendBlock("TEstando 1 2 3...\r\n", 19, &sent);
      vTaskDelay(1000/portTICK_RATE_MS);
	  for(;;) {
			vTaskDelay(50/portTICK_RATE_MS);
			LEDG_Neg();
	  }
  vTaskDelete(SoundTask);
}

serial_response_t receiveChar(char c) {
	
}

static portTASK_FUNCTION(WifiTask, pvParameters) {

	// start wifi udp server 
	uint8_t receivedChar;
	byte err;
	int16_t index = 0;
	uint8_t buffer[500];
	currentResponse.code = 0;//AT_CODE_t.AT_INCOMPLETE;
	
    vTaskDelay(1000/portTICK_RATE_MS);
//	  ESP_Init();
    
//    AS1_SendBlock();

  for(;;) {
//	  vTaskDelay(5000/portTICK_RATE_MS);
	  FRTOS1_ulTaskNotifyTake(pdTRUE, portMAX_DELAY );
	  
	  do
	  {
	      err = AS1_RecvChar(&receivedChar);
	      AS2_SendChar(receivedChar);
	      buffer[index++] = receivedChar;
	      receiveChar(receivedChar);
	  }
	  while (err == ERR_OK);
	  
	  
	  //https://www.freertos.org/ulTaskNotifyTake.html
  } 
  
  // close wifi udp server
  /* Destroy the task */
  vTaskDelete(WifiTask);
}

void CreateTasks(void) {
  if (FRTOS1_xTaskCreate(
     LEDTask,  /* pointer to the task */
      "LED", /* task name for kernel awareness debugging */
      configMINIMAL_STACK_SIZE + 0, /* task stack size */
      (void*)NULL, /* optional task startup argument */
      tskIDLE_PRIORITY + 1,  /* initial priority */
      (xTaskHandle*)NULL /* optional task handle to create */
    ) != pdPASS) {
      /*lint -e527 */
      for(;;){}; /* error! probably out of memory */
      /*lint +e527 */
  }
  if (FRTOS1_xTaskCreate(
     SoundTask,  /* pointer to the task */
      "Sound", /* task name for kernel awareness debugging */
      configMINIMAL_STACK_SIZE + 0, /* task stack size */
      (void*)NULL, /* optional task startup argument */
      tskIDLE_PRIORITY + 1,  /* initial priority */
      (xTaskHandle*)NULL /* optional task handle to create */
    ) != pdPASS) {
      /*lint -e527 */
      for(;;){}; /* error! probably out of memory */
      /*lint +e527 */
  }
  if (FRTOS1_xTaskCreate(
     WifiTask,  /* pointer to the task */
      "Wifi", /* task name for kernel awareness debugging */
      configMINIMAL_STACK_SIZE + 0, /* task stack size */
      (void*)NULL, /* optional task startup argument */
      tskIDLE_PRIORITY + 1,  /* initial priority */
      &xHandlingTask /* optional task handle to create */
    ) != pdPASS) {
      /*lint -e527 */
      for(;;){}; /* error! probably out of memory */
      /*lint +e527 */
  }
}

