// srvritem.h : interface of the CPegasusSrvrItem class
//

class CPegasusSrvrItem : public COleServerItem
{
	DECLARE_DYNAMIC(CPegasusSrvrItem)

// Constructors
public:
	CPegasusSrvrItem(CPegasusDoc* pContainerDoc);

// Attributes
	CPegasusDoc* GetDocument() const
		{ return (CPegasusDoc*)COleServerItem::GetDocument(); }

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPegasusSrvrItem)
	public:
	virtual BOOL OnDraw(CDC* pDC, CSize& rSize);
	virtual BOOL OnGetExtent(DVASPECT dwDrawAspect, CSize& rSize);
	//}}AFX_VIRTUAL

// Implementation
public:
	~CPegasusSrvrItem();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:
	virtual void Serialize(CArchive& ar);   // overridden for document i/o
};

/////////////////////////////////////////////////////////////////////////////
