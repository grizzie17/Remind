/*---------------------------------------------------------------------+\
|
|	ursadoc.cpp  --  brief description of what xprototyp.c is for
|
|	Purpose:
|	Author and Date:	J.Griswold			13-Feb-1995
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
	13-Feb-1995			J.Griswold
		Initial Revision
|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Include Files														|
|																		|
\+---------------------------------------------------------------------*/
#include "stdafx.h"		// must be first include for MFC
#include "beardefs.h"
#include "strconic.h"

#include "ursadoc.h"
/*---------------------------------------------------------------------+\
|																		|
|	Local defines / constants											|
|																		|
\+---------------------------------------------------------------------*/
#define INHERITED	XPDocument
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

IMPL_DynamicCreate( UrsaDocument, INHERITED )

/*---------------------------------------------------------------------+\

 *  NAME:	 UrsaDocument - constructor

 *  DESCRIPTION:

 *  SEE ALSO:

 *  AUTHOR: J.Griswold			DATE:	13-Feb-1995

\+---------------------------------------------------------------------*/
UrsaDocument::UrsaDocument
		(
		void
		)
{
}

/*---------------------------------------------------------------------+\

 *  NAME:	 ~UrsaDocument - destructor

 *  DESCRIPTION:

 *  SEE ALSO:

 *  AUTHOR: J.Griswold			DATE:	13-Feb-1995

\+---------------------------------------------------------------------*/
UrsaDocument::~UrsaDocument
		(
		void
		)
{
}


/*---------------------------------------------------------------------+\

 *  NAME:	 fileNew - brief statement

 *  DESCRIPTION:

 *  SEE ALSO:

 *  AUTHOR: J.Griswold			DATE:	07-Mar-1995

\+---------------------------------------------------------------------*/
Bool	UrsaDocument::fileNew
		(
		FileSpecPtr		pStationary
		)
{
	return YES;
}


/*---------------------------------------------------------------------+\

 *  NAME:	 fileOpen - brief statement

 *  DESCRIPTION:

 *  SEE ALSO:

 *  AUTHOR: J.Griswold			DATE:	03-Mar-1995

\+---------------------------------------------------------------------*/
Bool	UrsaDocument::fileOpen
		(
		FileSpecPtr		pFile
		)
{
	return YES;
}

/*---------------------------------------------------------------------+\

 *  NAME:	 fileClose - brief statement

 *  DESCRIPTION:

 *  SEE ALSO:

 *  AUTHOR: J.Griswold			DATE:	14-Feb-1995

\+---------------------------------------------------------------------*/
Bool	UrsaDocument::fileClose
		(
		void
		)
{
	return YES;
}


/*---------------------------------------------------------------------+\

 *  NAME:	 fileDraw - brief statement

 *  DESCRIPTION:

 *  SEE ALSO:

 *  AUTHOR: J.Griswold			DATE:	12-Mar-1995

\+---------------------------------------------------------------------*/
Bool	UrsaDocument::fileDraw
		(
		XPDraw	*pDraw
		)
{
	URect	rectUpdate;
	
	pDraw->getUpdateRect( &rectUpdate );

	pDraw->drawMoveTo( rectUpdate.left, rectUpdate.top );		// top,left move
	pDraw->drawLineTo( rectUpdate.left, rectUpdate.bottom );	// left side
	pDraw->drawLineTo( rectUpdate.right, rectUpdate.bottom );	// bottom
	pDraw->drawLineTo( rectUpdate.left, rectUpdate.top );		// bottom,right to top,left diag
	pDraw->drawLineTo( rectUpdate.right, rectUpdate.top );		// top
	pDraw->drawLineTo( rectUpdate.left, rectUpdate.bottom );	// other diag
	pDraw->drawMoveTo( rectUpdate.right, rectUpdate.top );
	pDraw->drawLineTo( rectUpdate.right, rectUpdate.bottom );
	
	GPosition2d	tOrigin;
	G4x4		tmxIdentity;
	G4x4		tmxTransf;
	double		dPrimary;
	double		dSecondary;
	GPosition	verts[200];
	long		numPoints;
	
	tmxIdentity.m_matrix[0] = 1.0;
	tmxIdentity.m_matrix[1] = 0.0;
	tmxIdentity.m_matrix[2] = 0.0;
	tmxIdentity.m_matrix[3] = 0.0;
	
	tmxIdentity.m_matrix[4] = 0.0;
	tmxIdentity.m_matrix[5] = 1.0;
	tmxIdentity.m_matrix[6] = 0.0;
	tmxIdentity.m_matrix[7] = 0.0;
	
	tmxIdentity.m_matrix[8] = 0.0;
	tmxIdentity.m_matrix[9] = 0.0;
	tmxIdentity.m_matrix[10] = 1.0;
	tmxIdentity.m_matrix[11] = 0.0;
	
	tmxIdentity.m_matrix[12] = 0.0;
	tmxIdentity.m_matrix[13] = 0.0;
	tmxIdentity.m_matrix[14] = 0.0;
	tmxIdentity.m_matrix[15] = 1.0;
	
	tmxTransf = tmxIdentity;
	dPrimary = rectUpdate.right - rectUpdate.left;
	dSecondary = rectUpdate.bottom - rectUpdate.top;
	
	tOrigin.x = (double)rectUpdate.left + dPrimary;
	tOrigin.y = (double)rectUpdate.top + dSecondary;
	
	numPoints = 199;
	strokeConic( &tOrigin, &tmxIdentity, dPrimary, dSecondary,
				0.0, 3.1415*2, 1.0, &tmxTransf, &numPoints, &verts[0] );
	
	return YES;
}


/*---------------------------------------------------------------------+\

 *  NAME:	 somePackage_someFunction - brief statement

 *  DESCRIPTION:

 *  SEE ALSO:

 *  AUTHOR: J.Griswold			DATE:	dd-mmm-1995

\+---------------------------------------------------------------------*/

