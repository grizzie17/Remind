// Pegasdoc.h : interface of the CPegasusDoc class
//
/////////////////////////////////////////////////////////////////////////////

#ifndef _H_pegasdoc
#define _H_pegasdoc

#include <afxole.h>         // MFC OLE classes


class CPegasusSrvrItem;

class CPegasusDoc : public COleServerDoc
{
protected: // create from serialization only
	CPegasusDoc();
	DECLARE_DYNCREATE(CPegasusDoc)

	CSize	m_sizeDoc;

// Attributes
public:
	CPegasusSrvrItem* GetEmbeddedItem()
		{ return (CPegasusSrvrItem*)COleServerDoc::GetEmbeddedItem(); }

	CSize	GetDocSize() { return m_sizeDoc; }

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPegasusDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void OnCloseDocument();
	virtual BOOL OnOpenDocument(LPCTSTR lpszPathName);
	virtual BOOL OnSaveDocument(LPCTSTR lpszPathName);
	virtual void OnShowViews(BOOL bVisible);
	virtual void SetPathName(LPCTSTR lpszPathName, BOOL bAddToMRU = TRUE);
	virtual void SetTitle(LPCTSTR lpszTitle);
	protected:
	virtual COleServerItem* OnGetEmbeddedItem();
	virtual BOOL SaveModified();
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CPegasusDoc();
	virtual void Serialize(CArchive& ar);   // overridden for document i/o
	virtual	void *GetPegasusDoc(); // Return pointer to Pegasus Doc
	virtual void InitDocument(); // CScrollView setup
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif


// Generated message map functions
protected:
	//{{AFX_MSG(CPegasusDoc)
	afx_msg void OnAddView();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

	// Generated OLE dispatch map functions
	//{{AFX_DISPATCH(CPegasusDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_DISPATCH
	DECLARE_DISPATCH_MAP()
};

/////////////////////////////////////////////////////////////////////////////
#endif // _H_pegasdoc
