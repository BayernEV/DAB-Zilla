#include "KeyStoneCOMM.h"

bool _PlayStream(char sw, unsigned int channel)
{
    return PlayStream(sw, (unsigned long)channel);
}

unsigned int _GetPlayIndex()
{
    return (unsigned int)GetPlayIndex();
}

bool _GetProgramName(char mode, unsigned int dabIndex,
                        char namemode,
                        wchar_t * programName
                        )
{
    return GetProgramName(mode, (unsigned long)dabIndex,
                        namemode,
			programName
			  );
}

bool _GetEnsembleName(unsigned int dabIndex,
                        char namemode,
                        wchar_t * programName
                        )
{
    return GetEnsembleName((unsigned long)dabIndex,
                        namemode,
			programName
			  );
}

