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
|	remappnp.h  --  brief description of what remappnp.h is for
|
|	Purpose:
|	Author and Date:	J.Griswold			30-Jun-1995
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
#ifndef _H_remappnp
#define _H_remappnp
/*---------------------------------------------------------------------+\
|																		|
|	Include Files														|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Defines																|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Type Definitions													|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Class Definitions													|
|																		|
\+---------------------------------------------------------------------*/

#if defined( FRAMEWORK_MFC )


#elif defined( FRAMEWORK_PowerPlant )


#define	NONPORT_RemindApplication	\
public:																					\
	virtual Boolean		ObeyCommand( CommandT inCommand, void* ioParam );				\
	virtual void		FindCommandStatus( CommandT inCommand,							\
											Boolean &outEnabled, Boolean &outUsesMark,	\
											Char16 &outMark, Str255 outName );			\
	virtual void	ShowAboutBox();			\
protected:									\
	virtual Bool	startupProcessing();


#endif // FRAMEWORK

#ifndef NONPORT_RemindApplication
#define NONPORT_RemindApplication
#endif


/*---------------------------------------------------------------------+\
|																		|
|	External Variables													|
|																		|
\+---------------------------------------------------------------------*/
/*=====================================================================+\
||																		|
||	Function Prototypes													|
||																		|
\+=====================================================================*/
/*=====================================================================+\
||																		|
||	Inline Functions													|
||																		|
\+=====================================================================*/


#endif /* _H_remappnp */

