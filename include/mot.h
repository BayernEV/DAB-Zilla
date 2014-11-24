#ifndef _MOT_H_
#define _MOT_H_

#include "datatype.h"

#define MAX_PACKET_PER_GROUP  36
#define MAX_GROUP_PER_OBJECT_BODY 80
#define MAX_OBJECT_SIZE (1024 * 50)
#define MAX_PACKET_PER_OBJECT_BODY MAX_PACKET_PER_GROUP*MAX_GROUP_PER_OBJECT_BODY
#define MAX_PAYLOAD_PER_PACKET  (236+7)
#define MAX_OBJECT_NUM 100
#define MAX_PACKET_IN_DATA_POOL 10240

#define MAX_NAME_LENGTH  100

#define FLAG_HEADER_COMPLETE    BIT0
#define FLAG_DIRECTORY_COMPLETE    BIT1
#define FLAG_BODY_COMPLETE		BIT2


#define HDR_FLAG_NAME    BIT0
#define HDR_FLAG_SCOPEID    BIT1
#define HDR_FLAG_COMPRESSED    BIT2

typedef enum _MotMode{
    MOT_HEADER_MODE = 0,
    MOT_DIRECTORY_MODE
}MotMode;

typedef struct _MotHeader {
    //uint16 u16TransportID;
    uint8 u8HeaderFlag;
    char szContentName[MAX_NAME_LENGTH];
    uint16 u16EnsembleID;
    uint32 u32ServiceID;
	uint8 u8ServCompID;
}MotHeader;

typedef struct _MotObject{
	uint16 u16TransportID;     //the id of the object
	uint16 u16GroupNum;
	MotHeader *header;
	uint8  pu8GroupSize[MAX_GROUP_PER_OBJECT_BODY];    //the number of packets in every group
	uint8  pu8GroupFlag[(MAX_GROUP_PER_OBJECT_BODY+7)/8];
	uint16  pu16PacketTable[MAX_GROUP_PER_OBJECT_BODY][MAX_PACKET_PER_GROUP];   //the flags of the received  packets
}MotObject;

extern MotObject pstObjects[MAX_OBJECT_NUM];
extern MotHeader pstHeaderInfo[MAX_OBJECT_NUM];
extern uint8 pu8ObjectsFlag[(MAX_OBJECT_NUM + 7) / 8];
extern uint16 u16ReceivedObjects;
//extern uint8 u8HeaderNum;
extern uint8 u8CompleteFlag;
//extern uint16 u16ObjectNum;
//extern Object stObjHeader;
extern MotObject stPicHeader;
extern MotObject stObjDirectory;


//extern BOOL MotQuery();
//extern void MotReset(MotMode mode);
extern uint32 MotAssemble(MotObject *pstObject,uint8 *pu8ObjectData);
extern void MotHeaderParser (uint8 *pu8HeaderData, uint16 u16HeaderSize, MotHeader *pstCurHeader);
extern void MotDirectoryParser (uint8 *pu8DirData, uint32 u32DirSize);


#endif