/*---------------------------------------------------------------------+\
|
|	ursadoc.h  --  brief description of what bcdoc.h is for
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
#ifndef _H_ursadoc
#define _H_ursadoc
/*---------------------------------------------------------------------+\
|																		|
|	Include Files														|
|																		|
\+---------------------------------------------------------------------*/
#include "framwork.h"
#if defined( FRAMEWORK_PowerPlant )
#	include <LWindow.h>				// KLUDGE: this needs to be moved to xpdoc
#endif

#include "beardefs.h"

#include "xpdoc.h"

/*---------------------------------------------------------------------+\
|																		|
|	Defines																|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Type definitions													|
|																		|
\+---------------------------------------------------------------------*/

class UrsaDocument : public XPDocument
{
	DECL_DynamicCreate( UrsaDocument )
public:
					UrsaDocument();
	virtual			~UrsaDocument();

	virtual Bool	fileNew( FileSpecPtr pStationary );
	virtual Bool	fileOpen( FileSpecPtr pFile );
	virtual Bool	fileClose();
	virtual Bool	fileDraw( XPDraw *pDraw );

};

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


#endif /* _H_ursadoc */

