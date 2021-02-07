// peggyflo.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CPeggyFloater dialog

class CPeggyFloater : public CDialog
{
// Construction
public:
	CPeggyFloater(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CPeggyFloater)
	enum { IDD = IDD_CALENDAR };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPeggyFloater)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CPeggyFloater)
	afx_msg void OnSelchangeCalMonth();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};
