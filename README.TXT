========================================================================
       MICROSOFT FOUNDATION CLASS LIBRARY : PEGASUS
========================================================================


AppWizard has created this PEGASUS application for you.  This application
not only demonstrates the basics of using the Microsoft Foundation classes
but is also a starting point for writing your application.

This file contains a summary of what you will find in each of the files that
make up your PEGASUS application.


PEGASUS.MAK
    This project file is compatible with the Visual C++ development
	environment. 

    It is also compatible with the NMAKE program provided with Visual C++. 

    To build a debug version of the program from the MS-DOS prompt, type
nmake /f PEGASUS.MAK CFG="Win32 Debug"
    or to build a release version of the program, type
nmake /f PEGASUS.MAK CFG="Win32 Release"

PEGASUS.H
    This is the main header file for the application.  It includes other
    project specific headers (including RESOURCE.H) and declares the
    CPegasusApp application class.

PEGASUS.CPP
    This is the main application source file that contains the application
    class CPegasusApp.

PEGASUS.RC
    This is a listing of all of the Microsoft Windows resources that the
    program uses.  It includes the icons, bitmaps, and cursors that are stored
    in the RES subdirectory.  This file can be directly edited in the
    Visual C++ development environment.

RES\PEGASUS.ICO
    This is an icon file, which is used as the application's icon.  This
    icon is included by the main resource file PEGASUS.RC.

RES\PEGASUS.RC2
    This file contains resources that are not edited by the Visual C++
	development environment.  You should place all resources not
	editable by the resource editor in this file.


PEGASUS.CLW
    This file contains information used by ClassWizard to edit existing
    classes or add new classes.  ClassWizard also uses this file to store
    information needed to create and edit message maps and dialog data
    maps and to create prototype member functions.

/////////////////////////////////////////////////////////////////////////////

For the main frame window:

mainfrm.H, mainfrm.CPP
    These files contain the frame class CMainFrame, which is derived from
    CMDIFrameWnd and controls all MDI frame features.

RES\TOOLBAR.BMP
    This bitmap file is used to create tiled images for the toolbar.
    The initial toolbar and status bar are constructed in the
    CMainFrame class.  Edit this toolbar bitmap along with the
    array in mainfrm.CPP to add more toolbar buttons.

RES\ITOOLBAR.BMP
	This bitmap file is used to create tiled images for the toolbar
	when your server application is in-place activated inside another
	container.  This toolbar is constructed in the CInPlaceFrame 
	class.  This bitmap is similar to the bitmap in RES\TOOLBAR.BMP
	except that it has many non-server commands removed.

/////////////////////////////////////////////////////////////////////////////

AppWizard creates one document type and one view:

Pegasdoc.H, Pegasdoc.CPP - the document
    These files contain your CPegasusDoc class.  Edit these files to
    add your special document data and to implement file saving and loading
    (via CPegasusDoc::Serialize).

Pegasvw.H, Pegasvw.CPP - the view of the document
    These files contain your CPegasusView class.
    CPegasusView objects are used to view CPegasusDoc objects.
    
RES\Pegasdoc.ICO
    This is an icon file, which is used as the icon for MDI child windows
    for the CPegasusDoc class.  This icon is included by the main
    resource file PEGASUS.RC.

PEGASUS.REG
    This is an example .REG file that shows you the kind of registration
    settings the framework will set for you.  You can use this as a .REG
    file to go along with your application or just delete it and rely
    on the default RegisterShellFileTypes registration.

PEGASUS.ODL
    This file contains the Object Description Language source code for the
    type library of your application.

/////////////////////////////////////////////////////////////////////////////

AppWizard has also created classes specific to OLE Linking and Embedding

cntritem.H, cntritem.CPP - this class is used to 
	manipulate OLE objects.  They are usually displayed by your 
	CPegasusView class and serialized as part of your CPegasusDoc class.
	
srvritem.H, srvritem.CPP - this class is used to 
	connect your CPegasusDoc class to the OLE system, and optionally
	provide links to your document.
ipframe.H, ipframe.CPP - this class is derived
	from COleIPFrameWnd and controls all frame features during
	in-place activation.
/////////////////////////////////////////////////////////////////////////////

Help Support:

MAKEHELP.BAT
    Use this batch file to create your application's Help file, PEGASUS.HLP.

PEGASUS.HPJ
    This file is the Help Project file used by the Help compiler to create
    your application's Help file.

HLP\*.BMP
    These are bitmap files required by the standard Help file topics for
    Microsoft Foundation Class Library standard commands.

HLP\*.RTF
    This file contains the standard help topics for standard MFC
    commands and screen objects.

/////////////////////////////////////////////////////////////////////////////
Other standard files:

STDAFX.H, STDAFX.CPP
    These files are used to build a precompiled header (PCH) file
    named PEGASUS.PCH and a precompiled types file named STDAFX.OBJ.

RESOURCE.H
    This is the standard header file, which defines new resource IDs.
    Visual C++ reads and updates this file.

/////////////////////////////////////////////////////////////////////////////
Other notes:

AppWizard uses "TODO:" to indicate parts of the source code you
should add to or customize.

/////////////////////////////////////////////////////////////////////////////
