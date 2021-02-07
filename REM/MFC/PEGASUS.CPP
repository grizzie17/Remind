// Pegasus.cpp : Defines the class behaviors for the application.
//

#include "stdafx.h"
#include "Pegasus.h"

#include "mainfrm.h"
#include "ipframe.h"
#include "Pegasdoc.h"
#include "Pegasvw.h"
#include "remindde.h"

#include "xpproj.h"   // BC
#include PEGASUS_IncludeApplication
#include PEGASUS_IncludeDocument
#include PEGASUS_IncludeView


#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPegasusApp

BEGIN_MESSAGE_MAP(CPegasusApp, CWinApp)
	//{{AFX_MSG_MAP(CPegasusApp)
	ON_COMMAND(ID_APP_ABOUT, OnAppAbout)
	//}}AFX_MSG_MAP
	// Standard file based document commands
	ON_COMMAND(ID_FILE_NEW, CWinApp::OnFileNew)
	ON_COMMAND(ID_FILE_OPEN, CWinApp::OnFileOpen)
	// Standard print setup command
	ON_COMMAND(ID_FILE_PRINT_SETUP, CWinApp::OnFilePrintSetup)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPegasusApp construction

CPegasusApp::CPegasusApp()
{
	// TODO: add construction code here,
	// Place all significant initialization in InitInstance
}

/////////////////////////////////////////////////////////////////////////////
// The one and only CPegasusApp object

CPegasusApp theApp;

// This identifier was generated to be statistically unique for your app.
// You may change it if you prefer to choose a specific identifier.
static const CLSID BASED_CODE clsid =
{ 0xfba01780, 0xe12, 0x11ce, { 0xa5, 0x45, 0x8, 0x0, 0x36, 0x84, 0x18, 0x2 } };

/////////////////////////////////////////////////////////////////////////////
// CPegasusApp initialization

BOOL CPegasusApp::InitInstance()
{
	// Initialize OLE libraries
	if (!AfxOleInit())
	{
		AfxMessageBox(IDP_OLE_INIT_FAILED);
		return FALSE;
	}

	// Standard initialization
	// If you are not using these features and wish to reduce the size
	//  of your final executable, you should remove from the following
	//  the specific initialization routines you do not need.

	Enable3dControls();

	LoadStdProfileSettings();  // Load standard INI file options (including MRU)

	// Register the application's document templates.  Document templates
	//  serve as the connection between documents, frame windows and views.

#if 0	// Old Stuff
	CMultiDocTemplate* pDocTemplate;

	pDocTemplate = new CMultiDocTemplate(
		IDR_PEGASUTYPE,
		RUNTIME_CLASS(CPegasusDoc),
		RUNTIME_CLASS(CMDIChildWnd),          // standard MDI child frame
		RUNTIME_CLASS(CPegasusView));
	pDocTemplate->SetContainerInfo(IDR_PEGASUTYPE_CNTR_IP);
	pDocTemplate->SetServerInfo(
		IDR_PEGASUTYPE_SRVR_EMB, IDR_PEGASUTYPE_SRVR_IP,
		RUNTIME_CLASS(CInPlaceFrame));
	AddDocTemplate(pDocTemplate);


#elif 0
	pDocTemplate = new CMultiDocTemplate(
		IDR_PEGASUTYPE,
		RUNTIME_CLASS(RemindDocument),
		RUNTIME_CLASS(CMDIChildWnd),          // standard MDI child frame
		RUNTIME_CLASS(RemindView));
	pDocTemplate->SetContainerInfo(IDR_PEGASUTYPE_CNTR_IP);
	pDocTemplate->SetServerInfo(
		IDR_PEGASUTYPE_SRVR_EMB, IDR_PEGASUTYPE_SRVR_IP,
		RUNTIME_CLASS(CInPlaceFrame));
	AddDocTemplate(pDocTemplate);

#elif 1

	// Pending View
	m_pPegasusPending = new CMultiDocTemplate(
		IDR_PEGASUVIEWPENDING,
		RUNTIME_CLASS(RemindDocument),
		RUNTIME_CLASS(CMDIChildWnd),          // standard MDI child frame
		RUNTIME_CLASS(RemindViewPending));
	m_pPegasusPending->SetContainerInfo(IDR_PEGASUVIEWPENDING_CNTR_IP);
	m_pPegasusPending->SetServerInfo(
		IDR_PEGASUVIEWPENDING_SRVR_EMB, IDR_PEGASUVIEWPENDING_SRVR_IP,
		RUNTIME_CLASS(CInPlaceFrame));
	AddDocTemplate(m_pPegasusPending);

	// Standard View
	m_pPegasusView = new CMultiDocTemplate(
		IDR_PEGASUTYPE,
		RUNTIME_CLASS(RemindDocument),
		RUNTIME_CLASS(CMDIChildWnd),          // standard MDI child frame
		RUNTIME_CLASS(RemindView));
	AddDocTemplate(m_pPegasusView);

	// Weekly View
	m_pPegasusWeekly = new CMultiDocTemplate(
		IDR_PEGASUVIEWWEEKLY,
		RUNTIME_CLASS(RemindDocument),
		RUNTIME_CLASS(CMDIChildWnd),          // standard MDI child frame
		RUNTIME_CLASS(RemindViewWeekly));
	AddDocTemplate(m_pPegasusWeekly);

	// Monthly View
	m_pPegasusMonthly = new CMultiDocTemplate(
		IDR_PEGASUVIEWMONTHLY,
		RUNTIME_CLASS(RemindDocument),
		RUNTIME_CLASS(CMDIChildWnd),          // standard MDI child frame
		RUNTIME_CLASS(RemindViewMonthly));
	AddDocTemplate(m_pPegasusMonthly);

	// Calendar View
		// Monthly View
	m_pPegasusCalendar = new CMultiDocTemplate(
		IDR_PEGASUVIEWCALENDAR,
		RUNTIME_CLASS(RemindDocument),
		RUNTIME_CLASS(CMDIChildWnd),          // standard MDI child frame
		RUNTIME_CLASS(RemindViewCalendar));
	AddDocTemplate(m_pPegasusCalendar);


#endif


	// Connect the COleTemplateServer to the document template.
	//  The COleTemplateServer creates new documents on behalf
	//  of requesting OLE containers by using information
	//  specified in the document template.
	m_server.ConnectTemplate(clsid, m_pPegasusPending, FALSE); // Was pDocTemplate

	// Register all OLE server factories as running.  This enables the
	//  OLE libraries to create objects from other applications.
	COleTemplateServer::RegisterAll();
		// Note: MDI applications register all server objects without regard
		//  to the /Embedding or /Automation on the command line.

	// create main MDI Frame window
	CMainFrame* pMainFrame = new CMainFrame;
	if (!pMainFrame->LoadFrame(IDR_MAINFRAME))
		return FALSE;
	m_pMainWnd = pMainFrame;

	// Parse the command line to see if launched as OLE server
	if (RunEmbedded() || RunAutomated())
	{
		// Application was run with /Embedding or /Automation.  Don't show the
		//  main window in this case.
		return TRUE;
	}

	// When a server application is launched stand-alone, it is a good idea
	//  to update the system registry in case it has been damaged.
	m_server.UpdateRegistry(OAT_INPLACE_SERVER);
	COleObjectFactory::UpdateRegistryAll();

	// create a new (empty) document
	//OnFileNew();

	// Pegasus Initialize
	//m_pApp->appInitialize();  // done elsewhere


	if (m_lpCmdLine[0] != '\0')
	{
		FileSpec	spec;
		FileSpecPtr	pSpec;

		fileSpec_specifyFile( &spec, m_lpCmdLine );
		pSpec = &spec;
		m_pApp->appStartOpenDoc( &pSpec, 0L );
		// TODO: add command line processing here

	}
	else
	{
		m_pApp->appStartNone(0L);
	}

	// The main window has been initialized, so show and update it.
	pMainFrame->ShowWindow(m_nCmdShow);
	pMainFrame->UpdateWindow();

	return TRUE;
}

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

// Implementation
protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//{{AFX_MSG(CAboutDlg)
		// No message handlers
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

// App command to run the dialog
void CPegasusApp::OnAppAbout()
{
	CAboutDlg aboutDlg;
	aboutDlg.DoModal();
}

/////////////////////////////////////////////////////////////////////////////
// CPegasusApp commands

BOOL CPegasusApp::InitApplication() 
{
	// TODO: Add your specialized code here and/or call the base class

	m_pApp = new PEGASUS_Application;

	if ( m_pApp )
	{
		m_pApp->setMFCParent( this );
		if (!m_pApp->appInitialize())
		{
			AfxMessageBox(IDS_INIT_FAILED, MB_OK | MB_ICONSTOP, 0); 
			::PostQuitMessage(1);
			return FALSE;
		}
	}
		
	return CWinApp::InitApplication();
}


void CPegasusApp::MFCNewDocument()
{
	// Wrapper for protected message

	OnFileNew();
}


void CPegasusApp::MFCOpenDocument(char *lpszPathName)
{
	// Wrapper for protected message
	
	CWinApp::OpenDocumentFile(lpszPathName);
}

int CPegasusApp::ExitInstance() 
{
	// TODO: Add your specialized code here and/or call the base class
	
	if (m_pApp)
	{
		m_pApp->appDestroy();

		delete m_pApp;
		m_pApp = NULL;
	}

	return CWinApp::ExitInstance();
}
