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

typedef enum
{
	AT_OK, AT_ERROR, AT_IPD
} AT_CODE_t;

typedef struct
{
	AT_CODE_t code;
	byte isComplete;
	uint8_t connection;
	uint16_t size;
	uint8_t *data;
	uint8_t read;
} serial_response_t;

typedef struct
{
	uint8_t line;
} QueueItem_t;

QueueHandle_t fila;

serial_response_t *currentResponse;
uint8_t charMachineState;
uint8_t atMachineState;

static uint8_t APP_EspMsgBuf[512]; /* buffer for messages from ESP8266 */

static portTASK_FUNCTION(LEDTask, pvParameters)
{

	for (;;)
	{
		//LED_Blue_Neg();
		vTaskDelay(1000 / portTICK_RATE_MS);
	}
	vTaskDelete(LEDTask);
}

static portTASK_FUNCTION(SoundTask, pvParameters)
{
	uint16_t sent;

	AS2_SendBlock("SoundTask\r\n", 11, &sent);
	vTaskDelay(1000 / portTICK_RATE_MS);
	for (;;)
	{
		vTaskDelay(50 / portTICK_RATE_MS);
		//LEDG_Neg();
	}
	vTaskDelete(SoundTask);
}

void receiveChar(char c)
{
	if (charMachineState == 1)
	{
		if (c == '\r')
		{
			charMachineState = 2;
		}
	}
	else if (charMachineState == 2)
	{
		if (c == '\n')
		{
			charMachineState = 3;
		}
	}
	else if (charMachineState == 3)
	{
		if (c == 'O')
		{
			currentResponse->code = AT_OK;
			charMachineState = 4;
		}
		else if (c == 'E')
		{
			currentResponse->code = AT_ERROR;
			charMachineState = 8;
		}
		else if (c == '+')
		{
			currentResponse->code = AT_IPD;
			charMachineState = 10;
		}
	}
	else if (charMachineState == 4)
	{
		if (c == 'K')
		{
			charMachineState = 4;
		}
	}
	else if (charMachineState == 5)
	{
		if (c == '\n')
		{
			charMachineState = 6;
		}
	}
	else if (charMachineState == 6)
	{
		if (c == '\n')
		{
			charMachineState = 7;
		}
	}
	else if (charMachineState == 7)
	{
		currentResponse->isComplete = 1;
	}
	else if (charMachineState == 8)
	{
		if (c == 'R')
		{
			// for know, does nothing
		}
		else if ('\r')
		{
			charMachineState = 5;
		}
	}
	else if (charMachineState == 9)
	{
		if ('\r')
		{
			charMachineState = 5;
		}
	}
	else if (charMachineState == 10)
	{
		if (c == 'I' || c == 'P' || c == 'D')
		{
			// don't do anything yet
		}
		else if (c == ',')
		{
			charMachineState = 11;
		}
	}
	else if (charMachineState == 11)
	{

		if (c == ',')
		{
			charMachineState = 12;
		}
		else
		{
			currentResponse->connection = currentResponse->connection * 10
					+ (int) c;
		}
	}
	else if (charMachineState == 12)
	{

		if (c == ':')
		{
			uint8_t buffer[20];
			currentResponse->data = buffer;
			charMachineState = 13;
		}
		else
		{
			currentResponse->size = currentResponse->size * 10 + (c - 0x30);
		}
	}
	else if (charMachineState == 13)
	{
		currentResponse->data[currentResponse->read++] = c;

		if (currentResponse->read >= currentResponse->size)
		{
			charMachineState = 14;
		}
	}
	else if (charMachineState == 14)
	{
		if (c == '\r')
		{
			// don't do anything yet
		}
		else if (c == '\n')
		{
			charMachineState = 15;
		}
	}
	else if (charMachineState == 15)
	{
		if (c == 'O')
		{
			charMachineState = 4;
		}
		else if (c == 'E')
		{
			charMachineState = 8;
		}
	}
}

void resetResponse()
{
	static uint8_t buffer[500];

	static serial_response_t newResponse =
	{ AT_ERROR, 0, 0, 0, buffer, 0 };

	currentResponse = &newResponse;
	charMachineState = 1;
}

bool ConfigESPstateMachine()
{
	uint16_t sent;

	if (atMachineState == 1)
	{
		AS1_SendBlock("ATE0\r\n", 6, &sent);
		AS2_SendBlock("ATE0\r\n", 6, &sent);
	}
	else if (atMachineState == 2)
	{
		AS1_SendBlock("AT+CWMODE=3\r\n", 13, &sent);
		AS2_SendBlock("AT+CWMODE=3\r\n", 13, &sent);
	}
	else if (atMachineState == 3)
	{
		AS1_SendBlock("AT+CWSAP=\"esp_123\",\"1234test\",5,3\r\n", 35, &sent);
		AS2_SendBlock("AT+CWSAP=\"esp_123\",\"1234test\",5,3\r\n", 35, &sent);
	}
	else if (atMachineState == 4)
	{
		AS1_SendBlock("AT+CIPAP=\"192.168.5.1\"\r\n", 24, &sent);
		AS2_SendBlock("AT+CIPAP=\"192.168.5.1\"\r\n", 24, &sent);
	}
	else if (atMachineState == 5)
	{
		AS1_SendBlock("AT+CIPMUX=1\r\n", 13, &sent);
		AS2_SendBlock("AT+CIPMUX=1\r\n", 13, &sent);
	}
	else if (atMachineState == 6)
	{
		AS1_SendBlock("AT+CIPSTART=1,\"UDP\",\"192.168.5.1\",4445,4445,2\r\n",
				47, &sent);
		AS2_SendBlock("AT+CIPSTART=1,\"UDP\",\"192.168.5.1\",4445,4445,2\r\n",
				47, &sent);
		atMachineState = 1;
		return TRUE;
	}

	return FALSE;
}

static portTASK_FUNCTION(WifiTask, pvParameters)
{

	// start wifi udp server
	uint8_t receivedChar;
	byte err;
	int16_t index = 0;
//	uint8_t buffer[500];
	resetResponse();
	bool isConfigured = FALSE;
	uint16_t sent;

	vTaskDelay(1000 / portTICK_RATE_MS);
	charMachineState = 1;

	for (;;)
	{
		FRTOS1_ulTaskNotifyTake(pdTRUE, portMAX_DELAY);

		do
		{
			err = AS1_RecvChar(&receivedChar);
			AS2_SendChar(receivedChar);
//		  buffer[index++] = receivedChar;
			receiveChar(receivedChar);
//			AS2_SendBlock("LOOP", 4, NULL);
			AS2_SendChar('-');
		} while (err == ERR_OK);

//		if (currentResponse->isComplete == 1) {

		if (currentResponse->code == AT_OK)
		{
			if (!isConfigured)
			{
				atMachineState++;
				isConfigured = ConfigESPstateMachine();
			}

//				AS2_SendBlock("FOI\r\n", 5, &sent);
//				AS2_SendBlock(charMachineState + "\r\n", 10, &sent);
		}
		else if (currentResponse->code == AT_ERROR)
		{
			if (!isConfigured)
			{
				isConfigured = ConfigESPstateMachine();
			}
		}
		else if (currentResponse->code == AT_IPD)
		{
			AS2_SendBlock(currentResponse->data, currentResponse->size, &sent);
			AS2_SendBlock("#\r\n", 3, &sent);
		}

		resetResponse();
//		}

//https://www.freertos.org/ulTaskNotifyTake.html
	}

	// close wifi udp server
	/* Destroy the task */
	vTaskDelete(WifiTask);
}

void CreateTasks(void)
{
	if (FRTOS1_xTaskCreate(
			LEDTask, /* pointer to the task */
			"LED", /* task name for kernel awareness debugging */
			configMINIMAL_STACK_SIZE + 0, /* task stack size */
			(void*)NULL, /* optional task startup argument */
			tskIDLE_PRIORITY + 1, /* initial priority */
			(xTaskHandle*)NULL /* optional task handle to create */
	) != pdPASS )
	{
		/*lint -e527 */
		for (;;)
		{
		}; /* error! probably out of memory */
		/*lint +e527 */
	}
	if (FRTOS1_xTaskCreate(
			SoundTask, /* pointer to the task */
			"Sound", /* task name for kernel awareness debugging */
			configMINIMAL_STACK_SIZE + 0, /* task stack size */
			(void*)NULL, /* optional task startup argument */
			tskIDLE_PRIORITY + 1, /* initial priority */
			(xTaskHandle*)NULL /* optional task handle to create */
	) != pdPASS )
	{
		/*lint -e527 */
		for (;;)
		{
		}; /* error! probably out of memory */
		/*lint +e527 */
	}
	if (FRTOS1_xTaskCreate(
			WifiTask, /* pointer to the task */
			"Wifi", /* task name for kernel awareness debugging */
			configMINIMAL_STACK_SIZE + 0, /* task stack size */
			(void*)NULL, /* optional task startup argument */
			tskIDLE_PRIORITY + 1, /* initial priority */
			&xHandlingTask /* optional task handle to create */
	) != pdPASS )
	{
		/*lint -e527 */
		for (;;)
		{
		}; /* error! probably out of memory */
		/*lint +e527 */
	}
}

