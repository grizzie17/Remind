/*---------------------------------------------------------------------+\
|
|	ursaview.h  --  brief description of what bcdoc.h is for
|
|	Purpose:
|	Author and Date:	J.Griswold			11-Mar-1995
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
	11-Mar-1995			J.Griswold
		Initial Revision
|
\+---------------------------------------------------------------------*/
#ifndef _H_ursaview
#define _H_ursaview
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

#include "xpview.h"

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

class UrsaView : public XPView
{
	DECL_StreamCreate( UrsaView )
private:
	void			initUrsaView();
	
public:
					UrsaView();
	virtual			~UrsaView();

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


#endif /* _H_ursaview */

