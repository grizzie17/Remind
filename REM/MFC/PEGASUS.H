// Pegasus.h : main header file for the PEGASUS application
//
#ifndef _H_Pegasus
#define _H_Pegasus
#include <afxole.h>         // MFC OLE classes

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CPegasusApp:
// See Pegasus.cpp for the implementation of this class
//

class XPApplication;

class CPegasusApp : public CWinApp
{

public:
	XPApplication	*m_pApp;	// Pointer to Pegasus layer Application object
		
public:
	CPegasusApp();
	void MFCNewDocument();
	void MFCOpenDocument(char *);


// Document Templace Member Variables
	CMultiDocTemplate*	m_pPegasusDebug;
	CMultiDocTemplate* 	m_pPegasusView;
	CMultiDocTemplate*	m_pPegasusPending;
	CMultiDocTemplate*	m_pPegasusWeekly;
	CMultiDocTemplate*	m_pPegasusMonthly;
	CMultiDocTemplate*	m_pPegasusCalendar;


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPegasusApp)
	public:
	virtual BOOL InitInstance();
	virtual BOOL InitApplication();
	virtual int ExitInstance();
	//}}AFX_VIRTUAL

// Implementation
	COleTemplateServer m_server;
		// Server object for document creation

	//{{AFX_MSG(CPegasusApp)
	afx_msg void OnAppAbout();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////
#endif
