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
|	remsplash.h  --  brief description of what remsplash.h is for
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
#ifndef _H_remsplash
#define _H_remsplash
/*---------------------------------------------------------------------+\
|																		|
|	Include Files														|
|																		|
\+---------------------------------------------------------------------*/
#include <LPeriodical.h>
#include <LOffscreenView.h>
#include <UGWorld.h>
#include "XLViewCmdr.h"
#include "beartype.h"
#include "xpdyn.h"

#include "remanim.h"
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

class SplashAnim : public XPAnimation
{
public:
//	construction/initialization/destruction
					SplashAnim();
	virtual			~SplashAnim();

public:

protected:

	ULong			vnFrame;
	ULong			vnLogoFrame;
	ULong			vnIconFrame;
	XPSpritePixPtr	vpLogo;
	XPSpritePixPtr	vpIcon;
	
//============================== Overrides ==============================
	//	XPAnimation
public:
	virtual Bool	initialize();
	virtual Bool	moreFrames();
	virtual Bool	frameStart();
	virtual Bool	frameDrawSome();
	virtual Bool	frameComplete();
};


class RemindSplash : public XLViewCommander, public LPeriodical
{
	DECL_StreamCreate( RemindSplash )
public:
//	construction/initialization/destruction
					RemindSplash();
	virtual			~RemindSplash();
private:
	void			initRemindSplash();

public:
//	public functions

	static void		createRemindSplash();

protected:
//	protected functions

	void			finishAndClose();
	void			drawPict();
	LWindow			*getLWindow();
	Bool			doFrame();

//	protected data

	long			vnStartTime;
	Bool			vbRepeating;
	int				vnState;
	LGWorld*		vpViewWorld;
	XPAnimationPtr	vpAnim;

private:
//	private functions

//	private data

//============================== Overrides ==============================

	//	LPane
protected:
	virtual void	FinishCreateSelf();
	virtual void	DrawSelf();
	virtual void	ClickSelf( const SMouseDownEvent &inMouseDown );
	virtual void	DeactivateSelf();
	
	//	LCommander
public:
	virtual Boolean	HandleKeyPress( const EventRecord &inKeyEvent );

	//	LPeriodical
public:
	virtual	void	SpendTime(const EventRecord &inMacEvent);

};

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


#endif /* _H_remsplash */

