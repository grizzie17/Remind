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
|	remsplash.cpp  --  brief description of what remsplash.cpp is for
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
	12-Sep-1995			J.Griswold
		Add function that creates the window for you and then forces
		the initial update.
	
	30-Jun-1995			J.Griswold
		Initial Revision
|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Include Files														|
|																		|
\+---------------------------------------------------------------------*/
#include "machine.h"
#if ! defined( OS_MACINTOSH )
#	error "This file is only available for the Macintosh"
#endif
#include "remsplash.h"
#include "xpappl.h"
/*---------------------------------------------------------------------+\
|																		|
|	Local defines / constants											|
|																		|
\+---------------------------------------------------------------------*/
#define INHERITED	XLViewCommander
/*---------------------------------------------------------------------+\
|																		|
|	Local Type Definitions												|
|																		|
\+---------------------------------------------------------------------*/
class PixLogo : public XPSpritePix
{
public:
	PixLogo();
	virtual ~PixLogo();
public:
	virtual Bool	reset();
	virtual Bool	hasFrame( Long nFrame );
	virtual void	draw( Rect* pViewRect, Long nFrame );
	virtual void	getFrameRect( Rect* pSpriteRect, Rect* pViewRect, Long nFrame );
protected:
	int			vnNum;
	int			vnDenom;
};

class PixIcon : public XPSpritePix
{
public:
	PixIcon();
	virtual ~PixIcon();
public:
	virtual Bool	hasFrame( Long nFrame );
	virtual void	draw( Rect* pViewRect, Long nFrame );
};

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

#if 0
____class____(){}
#endif

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
PixLogo::PixLogo
		(
		)
{
	vnDenom = 0;
	vnNum = 0;
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
PixLogo::~PixLogo
		(
		)
{
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
Bool	PixLogo::reset
		(
		)
{
	vnDenom = vnHeight / 3;
	vnNum = vnDenom;
	return YES;
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
Bool	PixLogo::hasFrame
		(
		Long	nFrame
		)
{
	if ( vnDenom - nFrame < 0 )
		return NO;
	else
		return YES;
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
void	PixLogo::draw
		(
		Rect*	pViewRect,
		Long	nFrame
		)
{
	GrafPtr		pPort;
	Rect		r;
	int			num;
	
	num = vnDenom - nFrame;
	
	if ( num < 2 )
		return;
	
	getFrameRect( &r, pViewRect, nFrame );
	
	::GetPort( &pPort );
	vpPixWorld->CopyImage( pPort, r );
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
void	PixLogo::getFrameRect
		(
		Rect*	pSpriteRect,
		Rect*	pViewRect,
		Long	nFrame
		)
{
	int			num;
	short		nHeight;
	short		nWidth;
	
	num = vnDenom - nFrame;
	
	if ( num < 1 )
	{
		XPSpritePix::getFrameRect( pSpriteRect, pViewRect, nFrame );
	}
	else
	{	
		nWidth = vnWidth * num / vnDenom;
		nHeight = vnHeight * num / vnDenom;
		
		pSpriteRect->left = ((pViewRect->right - pViewRect->left) - nWidth) / 2;
		pSpriteRect->top = ((pViewRect->bottom - pViewRect->top) - nHeight) / 2;
		pSpriteRect->right = pSpriteRect->left + nWidth;
		pSpriteRect->bottom = pSpriteRect->top + nHeight;
	}
}

#if 0
____class____(){}
#endif

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
PixIcon::PixIcon
		(
		)
{
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
PixIcon::~PixIcon
		(
		)
{
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
Bool	PixIcon::hasFrame
		(
		Long	nFrame
		)
{
	if ( 1 < nFrame )
		return YES;
	else
		return NO;
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
void	PixIcon::draw
		(
		Rect*	pViewRect,
		Long	nFrame
		)
{
	GrafPtr		pPort;
	Rect		r;
	
	if ( nFrame < 2 )
		return;
	
	::GetPort( &pPort );
	r.left = ((pViewRect->right - pViewRect->left) - vnWidth) / 2;
	r.top = ((pViewRect->bottom - pViewRect->top) - vnHeight) / 2;
	r.right = r.left + vnWidth;
	r.bottom = r.top + vnHeight;
	
	vpPixWorld->CopyImage( pPort, r );
}

#if 0
____class____(){}
#endif

/*---------------------------------------------------------------------+\

 *  NAME:	SplashAnim - constructor

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
SplashAnim::SplashAnim
		(
		void
		)
		: XPAnimation()
{
	vnFrame = 0;
	vnLogoFrame = 0;
	vnIconFrame = 0;
	vpLogo = NULL;
	vpIcon = NULL;
}

/*---------------------------------------------------------------------+\

 *  NAME:	~SplashAnim - destructor

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
SplashAnim::~SplashAnim
		(
		void
		)
{
	if ( vpLogo )
	{
		delete vpLogo;
		vpLogo = NULL;
	}
	if ( vpIcon )
	{
		delete vpIcon;
		vpIcon = NULL;
	}
}

/*---------------------------------------------------------------------+\

 *  NAME:	initialize - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
Bool	SplashAnim::initialize
		(
		void
		)
{
	Bool		result = NO;
	GDHandle	hMain;
	int			nDepth;
	short		nPictID;
	
	do // sequence
	{
		result = XPAnimation::initialize();
		if ( ! result )
			break;
		
		result = NO;	// assume failure
		
		hMain = GetMainDevice();
		nDepth = (**(**hMain).gdPMap).pixelSize;

		if ( 8 <= nDepth )
			nPictID = 200;
		else
			nPictID = 201;
		vpLogo = new PixLogo;
		if ( NULL == vpLogo )
			break;
		if ( ! vpLogo->specifyPicture( nPictID ) )
			break;
		if ( ! vpLogo->reset() )
			break;
		
		if ( 8 <= nDepth )
			nPictID = 202;
		else
			nPictID = 203;
		vpIcon = new PixIcon;
		if ( NULL == vpIcon )
			break;
		if ( ! vpIcon->specifyPicture( nPictID ) )
			break;
		if ( ! vpIcon->reset() )
			break;
		
		result = YES;
		
	} while ( 0 );
	
	return result;
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
Bool	SplashAnim::moreFrames
		(
		)
{
	Bool	result = NO;
	
	if ( vpLogo->hasFrame( vnFrame+1 ) )
		result = YES;
	
	return result;
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
Bool	SplashAnim::frameStart
		(
		)
{
	Bool	result = NO;
	
	++vnFrame;
	
	::ForeColor( blackColor );
	::BackColor( whiteColor );
	if ( vpLogo->hasFrame( vnFrame ) )
		result = YES;
	if ( vpIcon->hasFrame( vnFrame ) )
		result = YES;
	
	if ( result )
		::EraseRect( &vRect );
	
	return result;
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
Bool	SplashAnim::frameDrawSome
		(
		)
{
	Bool	result = YES;
	
	if ( vnIconFrame < vnFrame
			&&	vpIcon->hasFrame( vnFrame ) )
	{
		vpIcon->draw( &vRect, vnFrame );
		vnIconFrame = vnFrame;
		return YES;		// only draw one thing
	}
	
	if ( vnLogoFrame < vnFrame
			&&	vpLogo->hasFrame( vnFrame ) )
	{
		vpLogo->draw( &vRect, vnFrame );
		vnLogoFrame = vnFrame;
	}
	
	return result;
}

/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	20-Nov-1995

\+---------------------------------------------------------------------*/
Bool	SplashAnim::frameComplete
		(
		)
{
	Bool	result = YES;
	
	if ( vnIconFrame < vnFrame
			&&	vpIcon->hasFrame( vnFrame ) )
	{
		vpIcon->draw( &vRect, vnFrame );
		vnIconFrame = vnFrame;
	}
	
	if ( vnLogoFrame < vnFrame
			&&	vpLogo->hasFrame( vnFrame ) )
	{
		vpLogo->draw( &vRect, vnFrame );
		vnLogoFrame = vnFrame;
	}
	
	return result;
}

#if 0
____class____(){}
#endif

IMPL_StreamCreate( RemindSplash, INHERITED )
#if 0
_(){}
#endif

/*---------------------------------------------------------------------+\

 *  NAME:	 RemindSplash - constructor

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	30-Jun-1995

\+---------------------------------------------------------------------*/
RemindSplash::RemindSplash
		(
		void
		)
		: INHERITED()
{
	initRemindSplash();
}

/*---------------------------------------------------------------------+\

 *  NAME:	 ~RemindSplash - destructor

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	30-Jun-1995

\+---------------------------------------------------------------------*/
RemindSplash::~RemindSplash
		(
		void
		)
{
	if ( vpViewWorld )
	{
		delete vpViewWorld;
		vpViewWorld = NULL;
	}
	if ( vpAnim )
	{
		delete vpAnim;
		vpAnim = NULL;
	}
	
	XPApplication::enablePostedCommands();
}

/*---------------------------------------------------------------------+\

 *  NAME:	 initRemindSplash - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	30-Jun-1995

\+---------------------------------------------------------------------*/
void	RemindSplash::initRemindSplash
		(
		void
		)
{
	vnState = 0;
	vnStartTime = 0;
	vbRepeating = NO;
	vpViewWorld = NULL;
	vpAnim = NULL;
}

/*=====================================================================+\
||	 public member functions											|
\+=====================================================================*/
#if 0
____public____(){}
#endif

/*---------------------------------------------------------------------+\

 *  NAME:	 createRemindSplash - static function

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	12-Sep-1995

\+---------------------------------------------------------------------*/
void	RemindSplash::createRemindSplash
		(
		void
		)
{
	LWindow*	pWind;
	pWind = LWindow::CreateWindow( 5000, XPApplication::getApplicationPtr() );
	if ( pWind )
		pWind->UpdatePort();
}

/*=====================================================================+\
||	 protected member functions											|
\+=====================================================================*/
#if 0
____protected____(){}
#endif

/*---------------------------------------------------------------------+\

 *  NAME:	 finishAndClose - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	30-Jun-1995

\+---------------------------------------------------------------------*/
void	RemindSplash::finishAndClose
		(
		void
		)
{
	if ( vbRepeating )
		StopRepeating();
	else
		StopIdling();
	LWindow	*pWind = getLWindow();
	if ( pWind )
		pWind->DoClose();
}

/*---------------------------------------------------------------------+\

 *  NAME:	 drawPict - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	30-Jun-1995

\+---------------------------------------------------------------------*/
void	RemindSplash::drawPict
		(
		void
		)
{
	Rect			rView;
	SDimension16	size;
	GrafPtr			pViewPort;

	::GetPort( &pViewPort );

	vpViewWorld->BeginDrawing();
	
	GetFrameSize( size );
	rView.left = 0;
	rView.top = 0;
	rView.right = size.width;
	rView.bottom = size.height;
	
	if ( 0 == vnState )
		vpAnim->frameStart();
	
	vpAnim->frameComplete();
	vpViewWorld->EndDrawing();
	
	::SetPort( pViewPort );
	::ForeColor( blackColor );
	::BackColor( whiteColor );
	vpViewWorld->CopyImage( pViewPort, rView );
	vnState = 0;
}


/*---------------------------------------------------------------------+\

 *  NAME:	 getLWindow - Get pointer to window's super commander

 *  DESCRIPTION:

		This function walks up the super view list.  We assume that
		when we find a super view that is null, that we have the window.

 *  AUTHOR: J.Griswold			DATE:	14-May-1995

\+---------------------------------------------------------------------*/
LWindow*
		RemindSplash::getLWindow
		(
		void
		)
{
	LWindow		*pWindow = NULL;
	LView		*pView;
	
	pView = GetSuperView();
	if ( pView )
	{
		LView	*pTempView = pView;
		
		do
		{
			pTempView = pView->GetSuperView();
			if ( pTempView )
				pView = pTempView;
			else
				pWindow = (LWindow*)pView;
		} while ( pTempView );
	}
	
	return pWindow;
}

Bool	RemindSplash::doFrame
		(
		)
{
	Bool	bMore = YES;
	Bool	result = YES;
	Long	nDelta;
	
	if ( 0 < vnStartTime )
	{
		nDelta = ::TickCount() - vnStartTime;
		result = vpAnim->moreFrames();
		if ( result )
		{
			if ( nDelta < 1 )
			{
				if ( 0 == vnState )
				{
					vpViewWorld->BeginDrawing();
					result = vpAnim->frameStart();
					vpViewWorld->EndDrawing();
					vnState = 1;
				}
				else
				{
					vpViewWorld->BeginDrawing();
					vpAnim->frameDrawSome();
					vpViewWorld->EndDrawing();
					vnState = 2;			
				}
				return YES;
			}
			else
			{
				vnStartTime = 0;
				Refresh();
				getLWindow()->UpdatePort();
				vnStartTime = ::TickCount();
				vnState = 0;
				//FocusDraw();
				//drawPict();
			}
		}
	}
	else
	{
		nDelta = 0;
		if ( 0 == vnStartTime )
			vnStartTime = ::TickCount();
	}
	if ( ! result )
	{
		vnState = 100;
		if ( nDelta > 60*2 )
			bMore = NO;
	}
	
	return bMore;
}


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

#if 0
____LPane____(){}
#endif

/*---------------------------------------------------------------------+\

 *  NAME:	 FinishCreateSelf - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	09-Jul-1995

\+---------------------------------------------------------------------*/
void	RemindSplash::FinishCreateSelf
		(
		void
		)
{
	GDHandle		hMain;
	int				nDepth;
	SDimension16	size;
	Rect			r;
	
	INHERITED::FinishCreateSelf();
	hMain = GetMainDevice();
	nDepth = (**(**hMain).gdPMap).pixelSize;

	GetFrameSize( size );
	r.left = 0;
	r.top = 0;
	r.right = size.width;
	r.bottom = size.height;
	vpViewWorld = new LGWorld( r, nDepth, 0, 0, hMain );
	vpAnim = new SplashAnim;
	if ( vpAnim )
	{
		vpAnim->initialize();
		vpAnim->setSize( &r );
		vnState = 0;
	}
	
	if ( IsVisible() )
	{
		Refresh();
		getLWindow()->UpdatePort();
	}
	//StartRepeating();
	StartIdling();
	vbRepeating = NO;
}

/*---------------------------------------------------------------------+\

 *  NAME:	 DrawSelf - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	30-Jun-1995

\+---------------------------------------------------------------------*/
void	RemindSplash::DrawSelf
		(
		void
		)
{
	INHERITED::DrawSelf();
	
	if ( 0 == vnStartTime )
		vnStartTime = ::TickCount();
		
	drawPict();
		
}

/*---------------------------------------------------------------------+\

 *  NAME:	 ClickSelf - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	30-Jun-1995

\+---------------------------------------------------------------------*/
void	RemindSplash::ClickSelf
		(
		const SMouseDownEvent	&inMouseDown
		)
{
	INHERITED::ClickSelf( inMouseDown );
	finishAndClose();
}

void	RemindSplash::DeactivateSelf
		(
		)
{
	INHERITED::DeactivateSelf();
	finishAndClose();
}


#if 0
____LCommander____(){}
#endif

/*---------------------------------------------------------------------+\

 *  NAME:	HandleKeyPress - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	29-Nov-1995

\+---------------------------------------------------------------------*/
Boolean	RemindSplash::HandleKeyPress
		(
		const EventRecord	&inKeyEvent
		)
{
	UNREFERENCED_PARAMETER( inKeyEvent );
	
	finishAndClose();
	return true;
}

#if 0
____LPeriodical____(){}
#endif

/*---------------------------------------------------------------------+\

 *  NAME:	 SpendTime - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	30-Jun-1995

\+---------------------------------------------------------------------*/
void	RemindSplash::SpendTime
		(
		const EventRecord &inMacEvent
		)
{
	long	nDelta = 0;
	Bool	result = YES;
	
	UNREFERENCED_PARAMETER( inMacEvent );
	
	if ( ! vbRepeating )
	{
		nDelta = ::TickCount() - vnStartTime;
		if ( 60*3 < nDelta )
		{
			StopIdling();
			StartRepeating();
			vbRepeating = YES;
		}
		if ( 0 == vnState )
		{
			vpViewWorld->BeginDrawing();
			vpAnim->frameStart();
			vpViewWorld->EndDrawing();
			vnState = 1;
		}
		else
		{
			vpViewWorld->BeginDrawing();
			vpAnim->frameDrawSome();
			vpViewWorld->EndDrawing();
			vnState = 2;			
		}
		return;
	}
	else
	{
		if ( vnState < 100 )
		{
			EventRecord		ev;
			
			do
			{
				if ( ! doFrame()  ||  Button() )
				{
					finishAndClose();
					break;
				}
			} while ( vnState < 100
					&&  ! ::EventAvail( everyEvent, &ev ) );
		}
		else
		{
			nDelta = ::TickCount() - vnStartTime;
			if ( nDelta > 60*2  ||  Button() )
				finishAndClose();
		}
	}
}


/*---------------------------------------------------------------------+\

 *  NAME:	someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	dd-mmm-1995

\+---------------------------------------------------------------------*/

