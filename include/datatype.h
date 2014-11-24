#ifndef __DATATYPE_H__
#define __DATATYPE_H__

//include windows type
#ifdef WIN32
#include <Windows.h>
#endif
#include <stdio.h>

typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int uint32;

typedef char int8;
typedef short int16;
typedef int int32;

#define HEAD 0xFE
#define END 0xFD
#define STREAM_MODE_DAB 0
#define STREAM_MODE_FM 1

#define TEXT_BUFFER_LEN 300

#define BIT0    0x01
#define BIT1    0x02
#define BIT2    0x04
#define BIT3    0x08
#define BIT4    0x10
#define BIT5    0x20
#define BIT6    0x40
#define BIT7    0x80

typedef struct _CmdStruct{
	char StrName[20];
	unsigned char Cmdcode[24];
	char u8cmdlen;
}CmdStruct;
#endif // __DATATYPE_H__
