/*---------------------------------------------------------------------+\
|																		|
|				copyright 1986 .. 1995 Grizzly Software					|
|					a division of Bear Consulting Group					|
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
|	xpproj.h  --  brief description of what xpproj.h is for
|
|	Purpose:
|	Author and Date:	J.Griswold			13-Feb-1995
|
| optional topics (delete if not used)
|	Restrictions/Warnings:
|	Formats:
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
	13-Feb-1995			J.Griswold
		Initial Revision
|
\+---------------------------------------------------------------------*/
#ifndef _H_xpproj
#define _H_xpproj
/*---------------------------------------------------------------------+\
|																		|
|	Include Files														|
|																		|
\+---------------------------------------------------------------------*/
#include "framwork.h"

/*---------------------------------------------------------------------+\
|																		|
|	Defines																|
|																		|
\+---------------------------------------------------------------------*/
#define PEGASUS_Application			UrsaApplication
#define PEGASUS_Document			UrsaDocument
#define PEGASUS_View				UrsaView

#define PEGASUS_IncludeApplication	"ursaappl.h"
#define PEGASUS_IncludeDocument		"ursadoc.h"
#define PEGASUS_IncludeView			"ursaview.h"



#if defined( FRAMEWORK_MFC )

#define MFCCLASS_Application		CPegasusApp
#define MFCCLASS_Document			CPegasusDoc
#define MFCCLASS_View				CPegasusView

#elif defined( FRAMEWORK_PowerPlant )

#define	PEGASUS_ViewPPob			'remV'
#define PEGASUS_ViewConstructor		UrsaView::CreateUrsaViewStream

#endif

/*---------------------------------------------------------------------+\
|																		|
|	Type definitions													|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	External variables													|
|																		|
\+---------------------------------------------------------------------*/
/*=====================================================================+\
||																		|
||	Function prototypes													|
||																		|
\+=====================================================================*/


#endif /* _H_xpproj */

