// Pegasdoc.cpp : implementation of the CPegasusDoc class
//

#include "stdafx.h"
#include "Pegasus.h"

#include "Pegasdoc.h"
#include "cntritem.h"
#include "srvritem.h"
#include "pegasvw.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPegasusDoc

IMPLEMENT_DYNCREATE(CPegasusDoc, COleServerDoc)

BEGIN_MESSAGE_MAP(CPegasusDoc, COleServerDoc)
	//{{AFX_MSG_MAP(CPegasusDoc)
	ON_COMMAND(ID_ADD_VIEW, OnAddView)
	//}}AFX_MSG_MAP
	// Enable default OLE container implementation
	ON_UPDATE_COMMAND_UI(ID_EDIT_PASTE, COleServerDoc::OnUpdatePasteMenu)
	ON_UPDATE_COMMAND_UI(ID_EDIT_PASTE_LINK, COleServerDoc::OnUpdatePasteLinkMenu)
	ON_UPDATE_COMMAND_UI(ID_OLE_EDIT_LINKS, COleServerDoc::OnUpdateEditLinksMenu)
	ON_COMMAND(ID_OLE_EDIT_LINKS, COleServerDoc::OnEditLinks)
	ON_UPDATE_COMMAND_UI(ID_OLE_VERB_FIRST, COleServerDoc::OnUpdateObjectVerbMenu)
	ON_UPDATE_COMMAND_UI(ID_OLE_EDIT_CONVERT, COleServerDoc::OnUpdateObjectVerbMenu)
	ON_COMMAND(ID_OLE_EDIT_CONVERT, COleServerDoc::OnEditConvert)
END_MESSAGE_MAP()

BEGIN_DISPATCH_MAP(CPegasusDoc, COleServerDoc)
	//{{AFX_DISPATCH_MAP(CPegasusDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//      DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_DISPATCH_MAP
END_DISPATCH_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPegasusDoc construction/destruction

CPegasusDoc::CPegasusDoc()
{
	// For most containers, using compound files is a good idea.
	EnableCompoundFile();

	// TODO: add one-time construction code here

	EnableAutomation();

	AfxOleLockApp();
}


CPegasusDoc::~CPegasusDoc()
{
	AfxOleUnlockApp();
}

BOOL CPegasusDoc::OnNewDocument()
{
	if (!COleServerDoc::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	InitDocument();

	return TRUE;
}

void CPegasusDoc::InitDocument()
{
	// Default document size is 800 x 900 pix
	m_sizeDoc = CSize(800,900);
}


/////////////////////////////////////////////////////////////////////////////
// CPegasusDoc server implementation

COleServerItem* CPegasusDoc::OnGetEmbeddedItem()
{
	// OnGetEmbeddedItem is called by the framework to get the COleServerItem
	//  that is associated with the document.  It is only called when necessary.

	CPegasusSrvrItem* pItem = new CPegasusSrvrItem(this);
	ASSERT_VALID(pItem);
	return pItem;
}

/////////////////////////////////////////////////////////////////////////////
// CPegasusDoc serialization

void CPegasusDoc::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: add storing code here
	}
	else
	{
		// TODO: add loading code here
	}

	// Calling the base class COleServerDoc enables serialization
	//  of the container document's COleClientItem objects.
	COleServerDoc::Serialize(ar);
}

/////////////////////////////////////////////////////////////////////////////
// CPegasusDoc diagnostics

#ifdef _DEBUG
void CPegasusDoc::AssertValid() const
{
	COleServerDoc::AssertValid();
}

void CPegasusDoc::Dump(CDumpContext& dc) const
{
	COleServerDoc::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CPegasusDoc commands

void *CPegasusDoc::GetPegasusDoc()
{
	return (void *)NULL;
}

void CPegasusDoc::OnCloseDocument() 
{
	// TODO: Add your specialized code here and/or call the base class
	
	COleServerDoc::OnCloseDocument();
}

BOOL CPegasusDoc::OnOpenDocument(LPCTSTR lpszPathName) 
{
//	if (!COleServerDoc::OnOpenDocument(lpszPathName))
//		return FALSE;
	
	// TODO: Add your specialized creation code here

	InitDocument();
	
	return TRUE;
}

BOOL CPegasusDoc::OnSaveDocument(LPCTSTR lpszPathName) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	return COleServerDoc::OnSaveDocument(lpszPathName);
}

void CPegasusDoc::OnShowViews(BOOL bVisible) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	COleServerDoc::OnShowViews(bVisible);
}

BOOL CPegasusDoc::SaveModified() 
{
	// TODO: Add your specialized code here and/or call the base class
	
	return COleServerDoc::SaveModified();
}

void CPegasusDoc::SetPathName(LPCTSTR lpszPathName, BOOL bAddToMRU) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	COleServerDoc::SetPathName(lpszPathName, bAddToMRU);
}

void CPegasusDoc::SetTitle(LPCTSTR lpszTitle) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	COleServerDoc::SetTitle(lpszTitle);
}

void CPegasusDoc::OnAddView() 
{

#if 0	
	CRuntimeClass* pRuntimeClass = RUNTIME_CLASS( CPegasusView );
	CPegasusView* pObject = (CPegasusView *) pRuntimeClass->CreateObject();
	ASSERT( pObject->IsKindOf( RUNTIME_CLASS( CPegasusView ) ) );
#endif


	CRect rect_wnd(0,0, 500,800);
	CMiniFrameWnd *p_Wnd = new CMiniFrameWnd;

	p_Wnd->Create(NULL, "Yo!%$#@%$#@", MFS_MOVEFRAME, rect_wnd, AfxGetMainWnd(), 0);

	
//	AddView((CView *) p_Wnd);
	
	
}
