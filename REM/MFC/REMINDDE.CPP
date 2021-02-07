// remindde.cpp : implementation file
//

#include "stdafx.h"
#include "pegasus.h"
#include "remindde.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// RemindDebug

IMPLEMENT_DYNCREATE(RemindDebug, CScrollView)

RemindDebug::RemindDebug()
{
}

RemindDebug::~RemindDebug()
{
}


BEGIN_MESSAGE_MAP(RemindDebug, CScrollView)
	//{{AFX_MSG_MAP(RemindDebug)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// RemindDebug drawing

void RemindDebug::OnInitialUpdate()
{
	CScrollView::OnInitialUpdate();

	CSize sizeTotal;
	// TODO: calculate the total size of this view
	sizeTotal.cx = sizeTotal.cy = 100;
	SetScrollSizes(MM_TEXT, sizeTotal);
}

void RemindDebug::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// RemindDebug diagnostics

#ifdef _DEBUG
void RemindDebug::AssertValid() const
{
	CScrollView::AssertValid();
}

void RemindDebug::Dump(CDumpContext& dc) const
{
	CScrollView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// RemindDebug message handlers
