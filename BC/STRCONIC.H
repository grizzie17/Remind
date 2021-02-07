/*---------------------------------------------------------------------+\
|																		|
|	Copyright 1995 Intergraph Corporation								|
|	All Rights Reserved													|
|																		|
|	Including software, file formats, and audio-visual displays;		|
|	may only be used pursuant to applicable software license			|
|	agreement; contains confidential and proprietary information of		|
|	Intergraph and/or third parties which is protected by copyright		|
|	and trade secret law and may not be provided or otherwise made		|
|	available without proper authorization.								|
|																		|
|	Unpublished -- rights reserved under the Copyright Laws of the		|
|	United States.														|
|																		|
|	Intergraph Corporation												|
|	Huntsville, Alabama	  35894-0001									|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|
|	strconic.h  --  brief description of what strconic.h is for
|
|	Purpose:
|	Author and Date:	J.Griswold			dd-mmm-1995
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
	dd-mmm-1995			J.Griswold
		Initial Revision
|
\+---------------------------------------------------------------------*/
#ifndef _H_strconic
#define _H_strconic
/*---------------------------------------------------------------------+\
|																		|
|	Include Files														|
|																		|
\+---------------------------------------------------------------------*/
#include "beartype.h"
#include "bcgeom.h"

/*---------------------------------------------------------------------+\
|																		|
|	Defines																|
|																		|
\+---------------------------------------------------------------------*/
#define G4x4			BCMatrix
#define	GPosition2d		BCPosition2d
#define	GPosition		BCPosition2d
#define Inverse			inverse
#define	Build4x4		buildBCMatrix

/*---------------------------------------------------------------------+\
|																		|
|	Type Definitions													|
|																		|
\+---------------------------------------------------------------------*/

typedef long	HRESULT;
typedef	Bool	BOOL;


/*---------------------------------------------------------------------+\
|																		|
|	Class Definitions													|
|																		|
\+---------------------------------------------------------------------*/
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
/*---------------------------------------------------------------------+\

 *  NAME:	 strokeConic - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	10-Mar-1995

\+---------------------------------------------------------------------*/
HRESULT	strokeConic
		(
		GPosition2d	*pOrigin,		//	IN:	conic's origin
		G4x4		*ptmxRotation,	//	IN:	rotation of primary axis
		double		dPrimary,		//	IN:	length of primary axis
		double		dSecondary,		//	IN:	length of secondary axis
		double		dStartAngle,	//	IN:	start angle from primary axis
		double		dSweep,			//	IN:	sweep angle (counter clockwise)
		double		dTolerance,		//	IN:	deviation tolerance
		G4x4		*ptmxTransf,	//	IN:
		long		*pNumPoints,	//	IO:	I=size of buffer, O=number of points generated
		GPosition	*pPoints		//	OUT:generated points
		);

void	angle_to_rotation( double, G4x4* );
void	inverse_rotation( G4x4*, G4x4* );
void	fast_matrix( G4x4*, G4x4*, G4x4* );
void	fast_1x4_mat( GPosition*, G4x4*, GPosition* );

/*=====================================================================+\
||																		|
||	Inline Functions													|
||																		|
\+=====================================================================*/


#endif /* _H_strconic */

