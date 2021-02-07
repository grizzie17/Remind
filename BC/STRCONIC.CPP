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
|	strconic.cpp  --  routines to stroke arcs & ellipses
|
|	Purpose:
|	Author and Date:	J.Griswold			10-Mar-1995
|
| optional topics (delete if not used)
|	Usage:
|	Restrictions/Warnings:
|	Algorithms/Formats:
|	References:

		This code is based on routines originally authored for use
		in the Map2 system.  The originals were written by Glenn Alexander

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
	10-Mar-1995			J.Griswold
		Initial Revision
|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|																		|
|	Include Files														|
|																		|
\+---------------------------------------------------------------------*/
#include <float.h>
#include <math.h>
#include <string.h>
#include "strconic.h"
/*---------------------------------------------------------------------+\
|																		|
|	Local defines / constants											|
|																		|
\+---------------------------------------------------------------------*/
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
		)
{
	HRESULT	hr = 0;
	BOOL		bNegativeSweep = false;		//	set if arc sweep is negative
	double		dSweepAngle;				//	arc sweep angle
	long		numIncrements;				//	number of increments on arc
	double		dMajorAxis;					//	larger of primary and secondary axis
	double		dIncrAngle;					//	incremental angle for arc
	double		dCosHalfAngle;				//	cos of 1/2 incremental angle
	double		dSinHalfAngle;				//	sin of 1/2 incremental angle
	double		dAbsSecondary;				//	absolute value of secondary
	
	G4x4		tmxIncrRotation;			//	incremental rotation matrix
	G4x4		tmxElemScale;				//	element scale matrix
	G4x4		tmxInvElemScale;			//	inverse element scale matrix
	G4x4		tmxInvMaster;				//	master element inverse matrix
	G4x4		tmxMasterChar;				//	master element matrix
	
	GPosition	startPoint;
	
	//	Save the current sweep angle direction and then force positive
	if ( dSweep < 0.0 )
	{
		bNegativeSweep = true;
		dSweepAngle = -dSweep;
	}
	else
	{
		dSweepAngle = dSweep;
	}
	
	//	compute the incremental angle
	dMajorAxis = fabs( dPrimary );
	dAbsSecondary = fabs( dSecondary );
	if ( dAbsSecondary > dMajorAxis )
		dMajorAxis = dAbsSecondary;
	
	if ( DBL_EPSILON > dAbsSecondary
			||	DBL_EPSILON > fabs( dPrimary ) )
	{
		dIncrAngle = 0.0;
	}
	else
	{
		double	dTemp;
		
		dCosHalfAngle = (dMajorAxis - dTolerance) / dMajorAxis;
		dTemp = 1 - dCosHalfAngle * dCosHalfAngle;
		if ( dTemp < DBL_EPSILON )
		{
			dIncrAngle = 0.0;
		}
		else
		{
			dSinHalfAngle = sqrt( dTemp );
			dIncrAngle = 2.0 * atan( dSinHalfAngle / dCosHalfAngle );
		}
	}
	
	//	generate the number of iterations
	if ( fabs( dIncrAngle ) < DBL_EPSILON )
	{
		numIncrements = 2;
		dIncrAngle = dSweepAngle;
	}
	else
	{
		if ( dIncrAngle < 0.0 )
			dIncrAngle = -dIncrAngle;
		
		numIncrements = (long)( dSweepAngle / dIncrAngle + 0.5 );
		if ( numIncrements > 0 )
		{
			if ( numIncrements+1 > *pNumPoints )
				numIncrements = *pNumPoints - 1;
			
			dIncrAngle = dSweepAngle / (double)numIncrements;
			++numIncrements;
		}
		else
		{
			numIncrements = 2;
			dIncrAngle = dSweepAngle;
		}
	}
	
	//	save the number of increments so they are returned
	*pNumPoints = numIncrements;
	
	//	NEEDS_WORK: check to make sure there is enough room to stroke
	
	//	get an incremental rotation matrix from the generated angle
	angle_to_rotation( dIncrAngle, &tmxIncrRotation );
	
	//	NEEDS_WORK: zero matrix
	memset( &tmxElemScale, 0, sizeof( tmxElemScale ) );
	memset( &tmxInvElemScale, 0, sizeof( tmxInvElemScale ) );
	
	//	generate element scale matrix
	tmxElemScale.m_matrix[0] = dPrimary;
	tmxElemScale.m_matrix[5] = dSecondary;
	tmxElemScale.m_matrix[10] = 1.0;
	tmxElemScale.m_matrix[15] = 1.0;
	
	//	generate inverse element scale matrix
	tmxInvElemScale.m_matrix[0] = 1.0 / dPrimary;
	tmxInvElemScale.m_matrix[5] = 1.0 / dSecondary;
	tmxInvElemScale.m_matrix[10] = 1.0;
	tmxInvElemScale.m_matrix[15] = 1.0;
	
	//inverse_rotation( ptmxRotation, &tmxInvMaster );
	tmxInvMaster = ptmxRotation->Inverse();
	
	//	get the start point
	startPoint.x = cos( dStartAngle );
	startPoint.y = sin( dStartAngle );
	//startPoint.z = 0.0;
	
	//	generate the master inverse characteristic matrix
	//		inverse-rotation * inverse-scale
	//fast_matrix( &tmxInvMaster, &tmxInvElemScale, &tmxInvMaster );
	tmxInvMaster = tmxInvMaster * tmxInvElemScale;
	
	//		(inverse-rotation * inverse-scale) * incremental rotation
	//fast_matrix( &tmxInvMaster, &tmxIncrRotation, &tmxInvMaster );
	tmxInvMaster = tmxInvMaster * tmxIncrRotation;
	
	//	add the inverse origin translate to make the master
	//	inverse homogeneous.  First, the origin must be
	//	transformed by the master inverse
	tmxInvMaster.m_matrix[12]
			= -pOrigin->x * tmxInvMaster.m_matrix[0]
					+ (-pOrigin->y) * tmxInvMaster.m_matrix[4];
	tmxInvMaster.m_matrix[13]
			= -pOrigin->x * tmxInvMaster.m_matrix[1]
					+ (-pOrigin->y) * tmxInvMaster.m_matrix[5];
	
	//	generate the master non-inverse characteristic matrix
	//		scale * rotation
	//fast_matrix( &tmxElemScale, ptmxRotation, &tmxMasterChar );
	tmxMasterChar = tmxElemScale * (*ptmxRotation);
	
	//	add the origin translate to make the master non-inverse homogeneous
	tmxMasterChar.m_matrix[12] = pOrigin->x;
	tmxMasterChar.m_matrix[13] = pOrigin->y;
	
	//	scale, rotate and translate the start point according to the
	//	element's characteristics
	//fast_1x4_mat( &startPoint, &tmxMasterChar, &startPoint );
	startPoint = tmxMasterChar * startPoint;
	
	//	generate the master element characteristic matrix
	//		((inv-rot * inv-scale) * inv-rot) * (scale * rot)
	//fast_matrix( &tmxInvMaster, &tmxMasterChar, &tmxMasterChar );
	tmxMasterChar = tmxInvMaster * tmxMasterChar;
	
	//	generate the points on the arc and store them in the output
	//fast_1x4_mat( &startPoint, ptmxTransf, pPoints );
	*pPoints = *ptmxTransf * startPoint;
	++pPoints;
	
	while ( --numIncrements > 0 )
	{
		//fast_1x4_mat( &startPoint, &tmxMasterChar, &startPoint );
		//fast_1x4_mat( &startPoint, ptmxTransf, pPoints );
		startPoint = tmxMasterChar * startPoint;
		*pPoints = *ptmxTransf * startPoint;
		++pPoints;
	}
	
	return hr;
}

/*---------------------------------------------------------------------+\

 *  NAME:	 strokeConic - brief statement

 *  DESCRIPTION:

		This routine constructs a two (2) dimensional rotation which is
		always store in a (4x4) matrix.  For example, a given rotation
		matrix would be as follows:

			__             __
			| r1 r2   0   0 |
			| r3 r4   0   0 |
			| 0   0   1   0 |
			| 0   0   0   1 |
			--             --

		The generated matrix will be in row ordered form.  The
		input angle is assumed to (must) be in radians.

 *  AUTHOR: J.Griswold			DATE:	10-Mar-1995

\+---------------------------------------------------------------------*/
void	angle_to_rotation
		(
		double	angle,
		G4x4	*ptmx
		)
{
	double	saveCos;
	double	saveSin;
	
	ptmx->m_matrix[0] = saveCos = cos( angle );
	ptmx->m_matrix[1] = saveSin = sin( angle );
	ptmx->m_matrix[2] = 0.0;
	ptmx->m_matrix[3] = 0.0;
	
	ptmx->m_matrix[4] = -saveSin;
	ptmx->m_matrix[5] = saveCos;
	ptmx->m_matrix[6] = 0.0;
	ptmx->m_matrix[7] = 0.0;
	
	ptmx->m_matrix[8] = 0.0;
	ptmx->m_matrix[9] = 0.0;
	ptmx->m_matrix[10] = 1.0;
	ptmx->m_matrix[11] = 0.0;
	
	ptmx->m_matrix[12] = 0.0;
	ptmx->m_matrix[13] = 0.0;
	ptmx->m_matrix[14] = 0.0;
	ptmx->m_matrix[15] = 1.0;
}


/*---------------------------------------------------------------------+\

 *  NAME:	 someFunction - brief statement

 *  DESCRIPTION:

 *  AUTHOR: J.Griswold			DATE:	dd-mmm-1995

\+---------------------------------------------------------------------*/

