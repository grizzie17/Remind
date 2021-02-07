# Microsoft Developer Studio Project File - Name="Pegasus" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 5.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=Pegasus - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Remind.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Remind.mak" CFG="Pegasus - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Pegasus - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "Pegasus - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\WinDebug"
# PROP BASE Intermediate_Dir ".\WinDebug"
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\WinDebug"
# PROP Intermediate_Dir ".\WinDebug"
# ADD BASE CPP /nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I "u:\peggy\pegasus\mfc" /I "u:\peggy\pegasus" /I "u:\peggy\pleiades" /I "u:\peggy\library\src" /I "u:\peggy\library\src\headers" /I "u:\peggy\library\src\string" /I "u:\peggy\library\src\file" /I "u:\peggy\library\src\util" /I "u:\peggy\library\src\memory" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 ../library/windebug/library.lib /nologo /subsystem:windows /debug /machine:I386 /nodefaultlib:"libc.lib" /out:"u:\remind\Remindd.exe"
# SUBTRACT LINK32 /verbose /pdb:none /incremental:no

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\WinRel"
# PROP BASE Intermediate_Dir ".\WinRel"
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\WinRel"
# PROP Intermediate_Dir ".\WinRel"
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I "u:\peggy\pegasus\mfc" /I "u:\peggy\pegasus" /I "u:\peggy\pleiades" /I "u:\peggy\library\src" /I "u:\peggy\library\src\headers" /I "u:\peggy\library\src\string" /I "u:\peggy\library\src\file" /I "u:\peggy\library\src\util" /I "u:\peggy\library\src\memory" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 ../library/windebug/library.lib /nologo /subsystem:windows /incremental:yes /machine:I386 /nodefaultlib:"libc.lib" /out:"u:\remind\Remind.exe"
# SUBTRACT LINK32 /verbose /pdb:none

!ENDIF 

# Begin Target

# Name "Pegasus - Win32 Debug"
# Name "Pegasus - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\REM\mfc\cntritem.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\datedmy.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\dateinc.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\datejul.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\datemmyy.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\datemoon.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\dateownr.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\datepars.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\datepas.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\dateroot.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\datevalu.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\datewday.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\datewmy.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\dkeyword.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\holiday.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\ipframe.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\julian.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\LIBRARY\WinDebug\LIBRARY.LIB
# End Source File
# Begin Source File

SOURCE=.\REM\lunar.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\mainfrm.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\PEGASUS\MFC\mfcbase.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\PEGASUS\MFC\mfcfont.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\nodeitem.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\nodejday.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\nodelink.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\nodeweek.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\pegasdoc.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\pegasus.cpp
# End Source File
# Begin Source File

SOURCE=.\Pegasus.odl
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\Pegasus.rc
# ADD BASE RSC /l 0x409 /i "REM\mfc" /i ".\WinDebug"
# ADD RSC /l 0x409 /i ".\REM\mfc" /i "$(OUTDIR)" /i "REM\mfc" /i ".\WinDebug"
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\PEGASVW.CPP
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\peggyflo.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\rcategry.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remappl.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remappnp.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remdoc.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remdocnp.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\remindde.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remparse.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remvcal.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remvclnp.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remverr.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remview.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remvmon.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remvpend.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remvw.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remvweek.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\remvwknp.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\REMVWNP.CPP
# End Source File
# Begin Source File

SOURCE=.\REM\rerror.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\ritem.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\rmessage.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\rstring.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\rstyle.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\srvritem.cpp
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\stdafx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\REM\textline.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xpappl.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xpapplg.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xpcolor.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xpdoc.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xpdocg.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xpdraw.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xpfont.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xprefcnt.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xpstring.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\PEGASUS\xpsystem.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xpview.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pegasus\xpviewg.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pleiades\zcatalog.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pleiades\zcategry.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pleiades\zcatgmgr.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pleiades\zcatitem.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pleiades\zstyle.cpp
# End Source File
# Begin Source File

SOURCE=..\..\..\peggy\pleiades\zstylmgr.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\REM\mfc\cntritem.h
# End Source File
# Begin Source File

SOURCE=.\REM\datevalu.h
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\ipframe.h
# End Source File
# Begin Source File

SOURCE=.\REM\julian.h
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\mainfrm.h
# End Source File
# Begin Source File

SOURCE=.\REM\nodejday.h
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\pegasdoc.h
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\pegasus.h
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\PEGASVW.H
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\peggyflo.h
# End Source File
# Begin Source File

SOURCE=.\REM\remdoc.h
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\remindde.h
# End Source File
# Begin Source File

SOURCE=.\REM\remview.h
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\srvritem.h
# End Source File
# Begin Source File

SOURCE=.\rem\mfc\stdafx.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\REM\mfc\res\bmp00001.bmp
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\ico00001.ico
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\ico00002.ico
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\icon1.ico
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\idr_main.ico
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\idr_pega.bmp
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\idr_pega.ico
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\itoolbar.bmp
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\Pegasdoc.ico
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\Pegasus.ico
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\Pegasus.rc2
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\rdrdrive.ico
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\remind.ico
# End Source File
# Begin Source File

SOURCE=.\REM\mfc\res\toolbar.bmp
# End Source File
# End Group
# End Target
# End Project
