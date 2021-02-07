/*---------------------------------------------------------------------+\
|																		|
|				Copyright 1986 .. 1995 Grizzly Software					|
|					a division of Bear Consulting Group					|
|						  All Rights Reserved							|
|																		|
|	This software-file/document, in whole or in part, including			|
|	the structures and the procedures described herein, may not			|
|	be provided or otherwise made available without prior written		|
|	authorization.  In case of authorized or unauthorized				|
|	publication or duplication, copyright is claimed.					|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|
|	remappnp.cpp  --  brief description of what remappnp.cpp is for
|
|	Purpose:
|	Author and Date:	J.Griswold			30-Jun-1995
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
|	--=>keyflag<=-- "Version %v %f, Locked by %l"
|	""
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|
|	Revision History:
|
	30-Jun-1995			J.Griswold
		Initial Revision
|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Include Files														|
|																		|
\+---------------------------------------------------------------------*/
#include "stdafx.h"		// must be first include for MFC
#include "remappl.h"
#include "remappnp.h"
#include "remcmds.h"

#if defined( FRAMEWORK_PowerPlant )
#	include <LWindow.h>
#	include <UDesktop.h>
#	include "remsplash.h"
#	include "remabout.h"
#endif
/*---------------------------------------------------------------------+\
|																		|
|	Local defines / constants											|
|																		|
\+---------------------------------------------------------------------*/
#define INHERITED	XPApplication


/*---------------------------------------------------------------------+\
|																		|
|	Local Type Definitions												|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Private Global Variables											|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Public Global Variables												|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	External Variables													|
|																		|
\+---------------------------------------------------------------------*/
/*=====================================================================+\
||																		|
||	 Code																|
||																		|
\+=====================================================================*/

/*=====================================================================+\
||	 public member functions											|
\+=====================================================================*/
#if 0
____public____(){}
#endif

/*=====================================================================+\
||	 protected member functions											|
\+=====================================================================*/
#if 0
____protected____(){}
#endif

/*=====================================================================+\
||	 private member functions											|
\+=====================================================================*/
#if 0
____private____(){}
#endif

/*=====================================================================+\
||																		|
||	 Overrides															|
||																		|
\+=====================================================================*/
#if 0
________Overrides________(){}
#endif

#if defined( FRAMEWORK_MFC )
#elif defined( FRAMEWORK_PowerPlant )


Bool	RemindApplication::startupProcessing
		(
		void
		)
{
	RemindSplash::createRemindSplash();
	return INHERITED::startupProcessing();
}

/*---------------------------------------------------------------------+\

 *  NAME:	 ObeyCommand - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	24-Mar-1995

\+---------------------------------------------------------------------*/
Boolean	RemindApplication::ObeyCommand
		(
		CommandT	inCommand,
		void		*ioParam
		)
{
	Boolean		cmdHandled = true;

	switch ( inCommand )
	{
	case CMD_ViewCalendar:
		if ( NULL == vpCalendar )
		{
			LWindow::CreateWindow( CMD_ViewCalendar, this );
		}
		break;
	
	case CMD_SetDate:
		long	nValue;
		nValue = *(LongPtr)ioParam;
		cmdSetDate( nValue );
		break;
	
	default:
		cmdHandled = INHERITED::ObeyCommand( inCommand, ioParam );
		break;
	}
	
	return cmdHandled;
}


/*---------------------------------------------------------------------+\

 *  NAME:	 FindCommandStatus - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	24-Mar-1995

\+---------------------------------------------------------------------*/
void	RemindApplication::FindCommandStatus
		(
		CommandT	inCommand,
		Boolean		&outEnabled,
		Boolean		&outUsesMark,
		Char16		&outMark,
		Str255		outName
		)
{
	outUsesMark = false;

	switch ( inCommand )
	{
	case CMD_ViewCalendar:
		if ( NULL == vpCalendar )
			outEnabled = true;
		break;
	
	default:
		INHERITED::FindCommandStatus( inCommand, outEnabled,
									outUsesMark, outMark, outName );
		break;
	}
}

/*---------------------------------------------------------------------+\

 *  NAME:	 ShowAboutBox - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	03-Mar-1995

\+---------------------------------------------------------------------*/
void	RemindApplication::ShowAboutBox
		(
		void
		)
{
	RemindAbout::createRemindAbout();
}




#endif // FRAMEWORK

/*---------------------------------------------------------------------+\

 *  NAME:	 someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	dd-mmm-1995

\+---------------------------------------------------------------------*/

