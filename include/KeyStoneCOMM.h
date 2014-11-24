//#define _LINUXDEBUGRAW 1
//#define _LINUXDEBUG 1

#ifdef LABVIEW
#define LPCSTR const char *
#endif

#ifdef WIN32
#include "mot.h"

extern "C" __declspec(dllexport) long CommVersion(void);
extern "C" __declspec(dllexport) BOOL OpenRadioPort(LPCSTR port, BOOL usehardmute);
extern "C" __declspec(dllexport) BOOL HardResetRadio(void);
extern "C" __declspec(dllexport) BOOL IsSysReady(void);
//extern "C" __declspec(dllexport) BOOL SystemReset(char mode);
extern "C" __declspec(dllexport) BOOL CloseRadioPort(void);
extern "C" __declspec(dllexport) BOOL SetVolume(char volume);
extern "C" __declspec(dllexport) BOOL PlayStream(char mode,unsigned long channel);
extern "C" __declspec(dllexport) BOOL StopStream(void);

extern "C" __declspec(dllexport) char VolumePlus(void);
extern "C" __declspec(dllexport) char VolumeMinus(void);
extern "C" __declspec(dllexport) void VolumeMute(void);
extern "C" __declspec(dllexport) char GetVolume(void);
extern "C" __declspec(dllexport) char GetPlayMode(void);
extern "C" __declspec(dllexport) char GetPlayStatus(void);
extern "C" __declspec(dllexport) long GetTotalProgram(void);
extern "C" __declspec(dllexport) BOOL NextStream(void);
extern "C" __declspec(dllexport) BOOL PrevStream(void);
extern "C" __declspec(dllexport) long GetPlayIndex(void);
extern "C" __declspec(dllexport) char GetSignalStrength(int *biterror);
extern "C" __declspec(dllexport) char GetProgramType(char mode, long dabIndex);
extern "C" __declspec(dllexport) char GetProgramText(wchar_t * programText);
extern "C" __declspec(dllexport) BOOL GetProgramName(char mode, long dabIndex,char namemode, wchar_t * programName);
extern "C" __declspec(dllexport) long GetPreset(char mode, char presetindex);
extern "C" __declspec(dllexport) BOOL SetPreset(char mode, char presetindex, unsigned long channel);
extern "C" __declspec(dllexport) BOOL DABAutoSearch(unsigned char startindex, unsigned char endindex);
extern "C" __declspec(dllexport) BOOL DABAutoSearchNoClear(unsigned char startindex, unsigned char endindex);
extern "C" __declspec(dllexport) BOOL GetEnsembleName(long dabIndex, char namemode, wchar_t * programName);
extern "C" __declspec(dllexport) int GetDataRate(void);
extern "C" __declspec(dllexport) BOOL SetStereoMode(char mode);
extern "C" __declspec(dllexport) char GetFrequency(void);
extern "C" __declspec(dllexport) char GetStereoMode(void);
extern "C" __declspec(dllexport) char GetStereo(void);
extern "C" __declspec(dllexport) BOOL ClearDatabase(void);

extern "C" __declspec(dllexport) BOOL SetBBEEQ(char BBEOn, char EQMode, char BBELo, char BBEHi, char BBECFreq, char BBEMachFreq, char BBEMachGain, char BBEMachQ, char BBESurr, char BBEMp, char BBEHpF, char BBEHiMode );
extern "C" __declspec(dllexport) BOOL GetBBEEQ(char *BBEOn, char *EQMode, char *BBELo, char *BBEHi, char *BBECFreq, char *BBEMachFreq, char *BBEMachGain, char *BBEMachQ, char *BBESurr, char *BBEMp, char *BBEHpF, char *BBEHiMode);
extern "C" __declspec(dllexport) BOOL SetHeadroom(char headroom);
extern "C" __declspec(dllexport) char GetHeadroom(void);
extern "C" __declspec(dllexport) char GetApplicationType(long dabIndex);
extern "C" __declspec(dllexport) BOOL GetProgramInfo(long dabIndex, unsigned char * ServiceComponentID, uint32 * ServiceID, uint16 * EnsembleID);
extern "C" __declspec(dllexport) BOOL MotQuery(void);
extern "C" __declspec(dllexport) void GetImage(wchar_t *ImageFileName);
extern "C" __declspec(dllexport) void MotReset(MotMode enMode);
extern "C" __declspec(dllexport) char GetDABSignalQuality(void);
#endif

#ifdef __linux__
#include "mot.h"
#include <stdbool.h>
#include <wchar.h>

#define BOOL bool
#define DWORD int
#define HANDLE int
#define LPCSTR char *
#define LPCVOID unsigned char *
#define LPDWORD DWORD *
#define LPWSTR wchar_t *
#define LPOVERLAPPED DWORD
#undef NULL
#define NULL 0
#define Sleep(x) usleep(x * 1000)

long CommVersion(void);
BOOL OpenRadioPort(LPCSTR port, BOOL usehardmute);
BOOL HardResetRadio(void);
BOOL IsSysReady(void);
//extern "C" __declspec(dllexport) BOOL SystemReset(char mode);
BOOL CloseRadioPort(void);
BOOL SetVolume(char volume);
BOOL PlayStream(char mode,unsigned long channel);
BOOL StopStream(void);

char VolumePlus(void);
char VolumeMinus(void);
void VolumeMute(void);
char GetVolume(void);
char GetPlayMode(void);
char GetPlayStatus(void);
long GetTotalProgram(void);
BOOL NextStream(void);
BOOL PrevStream(void);
long GetPlayIndex(void);
char GetSignalStrength(int *biterror);
char GetProgramType(char mode, long dabIndex);
char GetProgramText(wchar_t * programText);
BOOL GetProgramName(char mode, long dabIndex,char namemode, wchar_t * programName);
long GetPreset(char mode, char presetindex);
BOOL SetPreset(char mode, char presetindex, unsigned long channel);
BOOL DABAutoSearch(unsigned char startindex, unsigned char endindex);
BOOL DABAutoSearchNoClear(unsigned char startindex, unsigned char endindex);
BOOL GetEnsembleName(long dabIndex, char namemode, wchar_t * programName);
int GetDataRate(void);
BOOL SetStereoMode(char mode);
char GetFrequency(void);
char GetStereoMode(void);
char GetStereo(void);
BOOL ClearDatabase(void);

BOOL SetBBEEQ(char BBEOn, char EQMode, char BBELo, char BBEHi, char BBECFreq, char BBEMachFreq, char BBEMachGain, char BBEMachQ, char BBESurr, char BBEMp, char BBEHpF, char BBEHiMode );
BOOL GetBBEEQ(char *BBEOn, char *EQMode, char *BBELo, char *BBEHi, char *BBECFreq, char *BBEMachFreq, char *BBEMachGain, char *BBEMachQ, char *BBESurr, char *BBEMp, char *BBEHpF, char *BBEHiMode);
BOOL SetHeadroom(char headroom);
char GetHeadroom(void);
char GetApplicationType(long dabIndex);
BOOL GetProgramInfo(long dabIndex, unsigned char * ServiceComponentID, uint32 * ServiceID, uint16 * EnsembleID);
BOOL MotQuery(void);
void GetImage(wchar_t *ImageFileName);
void MotReset(MotMode enMode);
char GetDABSignalQuality(void);
#endif

void HardMute(void);
void HardUnMute(void);
BOOL ReadSerialBytes (HANDLE serialhandle, unsigned char *buffer, DWORD noofbytestoread, DWORD *bytesreadreturn, DWORD exitFD);
BOOL WriteSerialBytes(HANDLE serialhandle, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite, LPDWORD lpNumberOfBytesWritten, LPOVERLAPPED lpOverlapped);
BOOL GoodHeader(unsigned char* input, DWORD dwBytes);
