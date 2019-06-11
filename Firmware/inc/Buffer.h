#ifndef BUFFER_H_
#define BUFFER_H_

#include <string.h>
#include "stm32f0xx.h"


#define MAX_BUFFER_DATA (8)
#define MAX_BUFFER_SIZE (8)

typedef struct Buffer{
	char data[MAX_BUFFER_SIZE][MAX_BUFFER_DATA];
	uint8_t data_len[MAX_BUFFER_SIZE];
	uint8_t idx_to_load; // Stores index where new element should go
	uint8_t idx_to_pop; // Stores index of the next element to remove
	uint8_t size; // Stores the number of elements in the buffer
	uint8_t overflow_cnt; // Stores the number of buffer overflows
} Buffer_t;

typedef struct CharBuffer{
	char data[MAX_BUFFER_DATA];
	uint8_t idx_to_load; // Stores index where new element should go
	uint8_t idx_to_pop; // Stores index of the next element to remove
	uint8_t size; // Stores the number of elements in the buffer
	uint8_t overflow_cnt; // Stores the number of buffer overflows
} CharBuffer_t;

//Public functions ------------------------------

extern void Buffer_add(Buffer_t* b, const char* str, uint8_t len); // str must be \0 terminated
extern int Buffer_pop(Buffer_t* b, char* data);
extern int Buffer_size(Buffer_t* b);
extern int Buffer_overflow(Buffer_t* b);
extern void Buffer_init();

extern void CharBuffer_add(CharBuffer_t* b, const char character);
extern void CharBuffer_pop(CharBuffer_t* b, char data);
extern int CharBuffer_size(CharBuffer_t* b);
extern int CharBuffer_overflow(CharBuffer_t* b);
extern void CharBuffer_init();

extern void CharBuffer_to_Buffer(CharBuffer_t* Src, Buffer_t* Dest);
//-----------------------------------------------

#endif
