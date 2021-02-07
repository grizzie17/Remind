// peggyflo.cpp : implementation file
//

#include "stdafx.h"
#include "pegasus.h"
#include "peggyflo.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPeggyFloater dialog


CPeggyFloater::CPeggyFloater(CWnd* pParent /*=NULL*/)
	: CDialog(CPeggyFloater::IDD, pParent)
{
	//{{AFX_DATA_INIT(CPeggyFloater)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CPeggyFloater::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CPeggyFloater)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CPeggyFloater, CDialog)
	//{{AFX_MSG_MAP(CPeggyFloater)
	ON_CBN_SELCHANGE(IDC_CAL_MONTH, OnSelchangeCalMonth)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CPeggyFloater message handlers

void CPeggyFloater::OnSelchangeCalMonth() 
{
	// TODO: Add your control notification handler code here
	
}
