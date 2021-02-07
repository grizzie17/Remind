/*---------------------------------------------------------------------+\
|
|	remmain.cpp  --  brief description of what remmain.c is for
|
|	Purpose:
|	Author and Date:	J.Griswold			10-Feb-1995
|
| optional topics (delete if not used)
|	Usage:
|	Restrictions/Warnings:
|	Algorithms/Formats:
|	References:
|	Notes:
|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|	$Header:	$
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|
|	Revision History:
|
	10-Feb-1995			J.Griswold
		Initial Revision
|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Include Files														|
|																		|
\+---------------------------------------------------------------------*/
#include <LGrowZone.h>
#include <UMemoryMgr.h>
#include <UDrawingState.h>
#include <UPowerTools.h>

#include "xpproj.h"
#include PEGASUS_IncludeApplication
/*---------------------------------------------------------------------+\
|																		|
|	Local defines / constants											|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Local type definitions												|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Private Global variables											|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Public Global variables												|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	External variables													|
|																		|
\+---------------------------------------------------------------------*/
/*=====================================================================+\
||																		|
||	 Code																|
||																		|
\+=====================================================================*/
/*---------------------------------------------------------------------+\

 *  NAME:	 main - main entry point

 *  DESCRIPTION:

 *  SEE ALSO:

 *  AUTHOR: J.Griswold			DATE:	10-Feb-1995

\+---------------------------------------------------------------------*/
void main( void )
{
									// Set Debugging options
#ifdef Debug_Throw
	gDebugThrow = debugAction_Alert;
#endif

#ifdef Debug_Signal
	gDebugSignal = debugAction_Alert;
#endif

	InitializeHeap(4);
	UQDGlobals::InitializeToolbox(&qd);

#ifdef Debug_Signal					// Check for missing MBAR, which
	CheckForInitialMBAR();			// probably means that there is no
#endif								// project resource file

	new LGrowZone(20000);

	PEGASUS_Application	theApp;			// replace this with your App type
	theApp.Run();
}



/*---------------------------------------------------------------------+\

 *  NAME:	 somePackage_someFunction - brief statement

 *  DESCRIPTION:

 *  SEE ALSO:

 *  AUTHOR: J.Griswold			DATE:	dd-mmm-1994

\+---------------------------------------------------------------------*/

