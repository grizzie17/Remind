// Pegasvw.cpp : implementation of the CPegasusView class
//

#include "stdafx.h"
#include <afxole.h>         // MFC OLE classes
#include <afxodlgs.h>       // MFC OLE dialog classes

#include "Pegasus.h"

#include "Pegasdoc.h"
#include "cntritem.h"
#include "Pegasvw.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPegasusView

IMPLEMENT_DYNCREATE(CPegasusView, CScrollView)

BEGIN_MESSAGE_MAP(CPegasusView, CScrollView)
	//{{AFX_MSG_MAP(CPegasusView)
	ON_WM_SETFOCUS()
	ON_WM_SIZE()
	ON_COMMAND(ID_OLE_INSERT_NEW, OnInsertObject)
	ON_COMMAND(ID_CANCEL_EDIT_CNTR, OnCancelEditCntr)
	ON_COMMAND(ID_CANCEL_EDIT_SRVR, OnCancelEditSrvr)
	ON_WM_LBUTTONDOWN()
	ON_WM_RBUTTONDOWN()
	ON_WM_MOUSEMOVE()
	ON_WM_CHAR()
	ON_WM_LBUTTONUP()
	ON_WM_RBUTTONUP()
	ON_WM_KEYDOWN()
	ON_CBN_SELCHANGE(IDC_CAL_MONTH, OnSelchangeCalMonth)
	ON_CBN_SELCHANGE(IDC_CAL_YEAR, OnSelchangeCalYear)
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CScrollView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CScrollView::OnFilePrintPreview)
	ON_COMMAND(IDC_BUTTON_LEFT, OnWndButtonLeft)
	ON_COMMAND(IDC_BUTTON_RIGHT, OnWndButtonRight)
	ON_COMMAND(ID_WEEKS_ONE_WEEK, OnWeeksOneWeek)
	ON_COMMAND(ID_WEEKS_TWO_WEEKS, OnWeeksTwoWeeks)
	ON_COMMAND(ID_WEEKS_THREE_WEEKS, OnWeeksThreeWeeks)
	ON_COMMAND(ID_WEEKS_FOUR_WEEKS, OnWeeksFourWeeks)
	ON_COMMAND(ID_WEEKS_FIVE_WEEKS, OnWeeksFiveWeeks)
	ON_COMMAND(ID_WEEKS_SIX_WEEKS, OnWeeksSixWeeks)
	ON_COMMAND(ID_NAVIGATE_NEXT, OnWndButtonRight)
	ON_COMMAND(ID_NAVIGATE_PREVIOUS, OnWndButtonLeft)
	ON_COMMAND(ID_NAVIGATE_BLOCKPREV, OnWndButtonUp)
	ON_COMMAND(ID_NAVIGATE_BLOCKNEXT, OnWndButtonDown)
	ON_COMMAND(ID_USERMESSAGE_FINISHATTACH, OnFinishAttach)
//	ON_MESSAGE(ID_CALC_HILITE, OnCalcHilite)
//	ON_MESSAGE(ID_SET_DATE, OnSetDate)
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CPegasusView construction/destruction

CPegasusView::CPegasusView()
{
	// TODO: add construction code here
}

CPegasusView::~CPegasusView()
{
}

/////////////////////////////////////////////////////////////////////////////
// CPegasusView drawing

void CPegasusView::OnDraw(CDC* pDC)
{
	CPegasusDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);

	// TODO: add draw code for native data here
	// TODO: also draw all OLE items in the document

	// Draw the selection at an arbitrary position.  This code should be
	//  removed once your real drawing code is implemented.  This position
	//  corresponds exactly to the rectangle returned by CPegasusCntrItem,
	//  to give the effect of in-place editing.

	// TODO: remove this code when final draw code is complete.

	if (m_pSelection == NULL)
	{
		POSITION pos = pDoc->GetStartPosition();
		m_pSelection = (CPegasusCntrItem*)pDoc->GetNextClientItem(pos);
	}
	if (m_pSelection != NULL)
		m_pSelection->Draw(pDC, CRect(10, 10, 210, 210));
}


/////////////////////////////////////////////////////////////////////////////
// CPegasusView printing

BOOL CPegasusView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CPegasusView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CPegasusView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// OLE Client support and commands

BOOL CPegasusView::IsSelected(const CObject* pDocItem) const
{
	// The implementation below is adequate if your selection consists of
	//  only CPegasusCntrItem objects.  To handle different selection
	//  mechanisms, the implementation here should be replaced.

	// TODO: implement this function that tests for a selected OLE client item

	return pDocItem == m_pSelection;
}

void CPegasusView::OnInsertObject()
{
	// Invoke the standard Insert Object dialog box to obtain information
	//  for new CPegasusCntrItem object.
	COleInsertDialog dlg;
	if (dlg.DoModal() != IDOK)
		return;

	BeginWaitCursor();

	CPegasusCntrItem* pItem = NULL;
	TRY
	{
		// Create new item connected to this document.
		CPegasusDoc* pDoc = GetDocument();
		ASSERT_VALID(pDoc);
		pItem = new CPegasusCntrItem(pDoc);
		ASSERT_VALID(pItem);

		// Initialize the item from the dialog data.
		if (!dlg.CreateItem(pItem))
			AfxThrowMemoryException();  // any exception will do
		ASSERT_VALID(pItem);

		// If item created from class list (not from file) then launch
		//  the server to edit the item.
		if (dlg.GetSelectionType() == COleInsertDialog::createNewItem)
			pItem->DoVerb(OLEIVERB_SHOW, this);

		ASSERT_VALID(pItem);

		// As an arbitrary user interface design, this sets the selection
		//  to the last item inserted.

		// TODO: reimplement selection as appropriate for your application

		m_pSelection = pItem;   // set selection to last inserted item
		pDoc->UpdateAllViews(NULL);
	}
	CATCH(CException, e)
	{
		if (pItem != NULL)
		{
			ASSERT_VALID(pItem);
			pItem->Delete();
		}
		AfxMessageBox(IDP_FAILED_TO_CREATE);
	}
	END_CATCH

	EndWaitCursor();
}

// The following command handler provides the standard keyboard
//  user interface to cancel an in-place editing session.  Here,
//  the container (not the server) causes the deactivation.
void CPegasusView::OnCancelEditCntr()
{
	// Close any in-place active item on this view.
	COleClientItem* pActiveItem = GetDocument()->GetInPlaceActiveItem(this);
	if (pActiveItem != NULL)
	{
		pActiveItem->Close();
	}
	ASSERT(GetDocument()->GetInPlaceActiveItem(this) == NULL);
}

// Special handling of OnSetFocus and OnSize are required for a container
//  when an object is being edited in-place.
void CPegasusView::OnSetFocus(CWnd* pOldWnd)
{
	COleClientItem* pActiveItem = GetDocument()->GetInPlaceActiveItem(this);
	if (pActiveItem != NULL &&
		pActiveItem->GetItemState() == COleClientItem::activeUIState)
	{
		// need to set focus to this item if it is in the same view
		CWnd* pWnd = pActiveItem->GetInPlaceWindow();
		if (pWnd != NULL)
		{
			pWnd->SetFocus();   // don't call the base class
			return;
		}
	}

	CScrollView::OnSetFocus(pOldWnd);
}

void CPegasusView::OnSize(UINT nType, int cx, int cy)
{
	CScrollView::OnSize(nType, cx, cy);
	COleClientItem* pActiveItem = GetDocument()->GetInPlaceActiveItem(this);
	if (pActiveItem != NULL)
		pActiveItem->SetItemRects();
}

/////////////////////////////////////////////////////////////////////////////
// OLE Server support

// The following command handler provides the standard keyboard
//  user interface to cancel an in-place editing session.  Here,
//  the server (not the container) causes the deactivation.
void CPegasusView::OnCancelEditSrvr()
{
	GetDocument()->OnDeactivateUI(FALSE);
}

/////////////////////////////////////////////////////////////////////////////
// CPegasusView diagnostics

#ifdef _DEBUG
void CPegasusView::AssertValid() const
{
	CScrollView::AssertValid();
}

void CPegasusView::Dump(CDumpContext& dc) const
{
	CScrollView::Dump(dc);
}

CPegasusDoc* CPegasusView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CPegasusDoc)));
	return (CPegasusDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CPegasusView message handlers



BOOL CPegasusView::OnScroll(UINT nScrollCode, UINT nPos, BOOL bDoScroll) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	return CScrollView::OnScroll(nScrollCode, nPos, bDoScroll);
}


CScrollBar* CPegasusView::GetScrollBarCtrl(int nBar) const
{
	// TODO: Add your specialized code here and/or call the base class
	
	return CScrollView::GetScrollBarCtrl(nBar);
}

void CPegasusView::OnPrepareDC(CDC* pDC, CPrintInfo* pInfo) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	CScrollView::OnPrepareDC(pDC, pInfo);
}

BOOL CPegasusView::OnScrollBy(CSize sizeScroll, BOOL bDoScroll) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	return CScrollView::OnScrollBy(sizeScroll, bDoScroll);
}

BOOL CPegasusView::OnCommand(WPARAM wParam, LPARAM lParam) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	return CScrollView::OnCommand(wParam, lParam);
}

void CPegasusView::OnActivateView(BOOL bActivate, CView* pActivateView, CView* pDeactiveView) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	CScrollView::OnActivateView(bActivate, pActivateView, pDeactiveView);
}

void CPegasusView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	
}


void CPegasusView::OnInitialUpdate()
{

	//SetScrollSizes( MM_TEXT, GetDocument()->GetDocSize() );

	CScrollView::OnInitialUpdate();

	// TODO: remove this code when final selection model code is written
	m_pSelection = NULL;    // initialize selection
//	PostMessage(WM_COMMAND, ID_USERMESSAGE_FINISHATTACH); 

}

void CPegasusView::MFCOnButtonDown( int button, UINT nFlags, CPoint point )
{
	// Should be overridden by XP func.
}

void CPegasusView::MFCOnButtonUp( int button, UINT nFlags, CPoint point )
{
	// Should be overridden by XP func.
}


void CPegasusView::OnLButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default

	MFCOnButtonDown( 0, nFlags, point );

#if 0
	CString str;

	str = "Left Button has been hit, coords: ";
	str += point.x;
	str += ", ";
	str += point.y;

	MessageBox(str, "Left Button",  MB_OK | MB_ICONINFORMATION);
#endif
	CScrollView::OnLButtonDown(nFlags, point);
}

void CPegasusView::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default

	MFCOnButtonDown( 2, nFlags, point );
	
	CScrollView::OnRButtonDown(nFlags, point);
}



void CPegasusView::OnWeeksOneWeek() 
{
	// TODO: Add your command handler code here
	
}

void CPegasusView::OnWeeksTwoWeeks() 
{
	// TODO: Add your command handler code here
	
}

void CPegasusView::OnWeeksThreeWeeks() 
{
	// TODO: Add your command handler code here
	
}

void CPegasusView::OnWeeksFourWeeks() 
{
	// TODO: Add your command handler code here
	
}

void CPegasusView::OnWeeksFiveWeeks() 
{
	// TODO: Add your command handler code here
	
}

void CPegasusView::OnWeeksSixWeeks() 
{
	// TODO: Add your command handler code here
	
}

void CPegasusView::OnFinishAttach()
{
	// TODO: Add your command handler code here
}

void CPegasusView::MFCOnMouseMove( UINT nFlags, CPoint point)
{

}

void CPegasusView::OnMouseMove(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default

	MFCOnMouseMove( nFlags, point );
	
	CScrollView::OnMouseMove(nFlags, point);
}

void CPegasusView::MFCOnChar(UINT nChar, UINT nRepCnt, UINT nFlags)
{

}

void CPegasusView::OnChar(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	// TODO: Add your message handler code here and/or call default
	
	MFCOnChar( nChar, nRepCnt, nFlags );
	CScrollView::OnChar(nChar, nRepCnt, nFlags);
}

void CPegasusView::OnWndButtonLeft()
{

}

void CPegasusView::OnWndButtonRight()
{

}

void CPegasusView::OnWndButtonUp()
{

}

void CPegasusView::OnWndButtonDown()
{

}

void CPegasusView::OnLButtonUp(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default

	MFCOnButtonUp( 0, nFlags, point );

	CScrollView::OnLButtonUp(nFlags, point);
}

void CPegasusView::OnRButtonUp(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default

	MFCOnButtonUp( 2, nFlags, point );
	
	CScrollView::OnRButtonUp(nFlags, point);
}

#if 0
void CPegasusView::OnCalcHilite(void)
{
}

void CPegasusView::OnSetDate(long jdate)
{
}
#endif

LRESULT CPegasusView::WindowProc(UINT message, WPARAM wParam, LPARAM lParam) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	return CScrollView::WindowProc(message, wParam, lParam);
}

void CPegasusView::MFCOnSelchangeCalMonth()
{
}

void CPegasusView::MFCOnSelchangeCalYear()
{
}

void CPegasusView::OnSelchangeCalMonth() 
{
	// TODO: Add your control notification handler code here
	MFCOnSelchangeCalMonth();
}

void CPegasusView::OnSelchangeCalYear() 
{
	// TODO: Add your control notification handler code here
	MFCOnSelchangeCalYear();
}
