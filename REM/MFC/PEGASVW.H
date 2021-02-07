// Pegasvw.h : interface of the CPegasusView class
//
/////////////////////////////////////////////////////////////////////////////
#ifndef _H_pegasvw
#define _H_pegasvw


class CPegasusCntrItem;

class CPegasusView : public CScrollView
{
protected: // create from serialization only
	CPegasusView();
	DECLARE_DYNCREATE(CPegasusView)

// Attributes
public:
	CPegasusDoc* GetDocument();
	// m_pSelection holds the selection to the current CPegasusCntrItem.
	// For many applications, such a member variable isn't adequate to
	//  represent a selection, such as a multiple selection or a selection
	//  of objects that are not CPegasusCntrItem objects.  This selection
	//  mechanism is provided just to help you get started.

	// TODO: replace this selection mechanism with one appropriate to your app.
	CPegasusCntrItem* 	m_pSelection;

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPegasusView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL OnScroll(UINT nScrollCode, UINT nPos, BOOL bDoScroll = TRUE);
	virtual CScrollBar* GetScrollBarCtrl(int nBar) const;
	virtual void OnPrepareDC(CDC* pDC, CPrintInfo* pInfo = NULL);
	virtual void OnInitialUpdate();
	protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual BOOL IsSelected(const CObject* pDocItem) const;// Container support
	virtual BOOL OnScrollBy(CSize sizeScroll, BOOL bDoScroll = TRUE);
	virtual BOOL OnCommand(WPARAM wParam, LPARAM lParam);
	virtual void OnActivateView(BOOL bActivate, CView* pActivateView, CView* pDeactiveView);
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	virtual LRESULT WindowProc(UINT message, WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL
	virtual void OnWeeksOneWeek();
	virtual void OnWeeksTwoWeeks();
	virtual void OnWeeksThreeWeeks();
	virtual void OnWeeksFourWeeks();
	virtual void OnWeeksFiveWeeks();
	virtual void OnWeeksSixWeeks();
	virtual void OnFinishAttach();
	virtual void OnWndButtonLeft();
	virtual void OnWndButtonRight();
	virtual void OnWndButtonUp();
	virtual void OnWndButtonDown();
	virtual void MFCOnButtonDown( int button, UINT nFlags, CPoint point );
	virtual void MFCOnButtonUp( int button, UINT nFlags, CPoint point );
	virtual void MFCOnMouseMove( UINT nFlags, CPoint point );
	virtual void MFCOnChar( UINT nChar, UINT nRepCnt, UINT nFlags );
	virtual void MFCOnSelchangeCalMonth();
	virtual void MFCOnSelchangeCalYear();
//	public:
//	virtual void OnCalcHilite();
//	virtual void OnSetDate( long jdate ); 


// Implementation
public:
	virtual ~CPegasusView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CPegasusView)
	afx_msg void OnSetFocus(CWnd* pOldWnd);
	afx_msg void OnSize(UINT nType, int cx, int cy);
	afx_msg void OnInsertObject();
	afx_msg void OnCancelEditCntr();
	afx_msg void OnCancelEditSrvr();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg void OnChar(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnRButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnSelchangeCalMonth();
	afx_msg void OnSelchangeCalYear();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in Pegasvw.cpp
inline CPegasusDoc* CPegasusView::GetDocument()
   { return (CPegasusDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////
#endif // _H_pegasvw
