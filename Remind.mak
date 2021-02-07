# Microsoft Developer Studio Generated NMAKE File, Format Version 4.20
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

!IF "$(CFG)" == ""
CFG=Pegasus - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Pegasus - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Pegasus - Win32 Debug" && "$(CFG)" !=\
 "Pegasus - Win32 Release"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "Remind.mak" CFG="Pegasus - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Pegasus - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "Pegasus - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "Pegasus - Win32 Debug"
RSC=rc.exe
CPP=cl.exe
MTL=mktyplib.exe

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "WinDebug"
# PROP BASE Intermediate_Dir "WinDebug"
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "WinDebug"
# PROP Intermediate_Dir "WinDebug"
OUTDIR=.\WinDebug
INTDIR=.\WinDebug

ALL : ".\Remindd.exe" "$(OUTDIR)\Pegasus.tlb"

CLEAN : 
	-@erase "$(INTDIR)\cntritem.obj"
	-@erase "$(INTDIR)\datedmy.obj"
	-@erase "$(INTDIR)\dateinc.obj"
	-@erase "$(INTDIR)\datejul.obj"
	-@erase "$(INTDIR)\datemmyy.obj"
	-@erase "$(INTDIR)\datemoon.obj"
	-@erase "$(INTDIR)\dateownr.obj"
	-@erase "$(INTDIR)\datepars.obj"
	-@erase "$(INTDIR)\datepas.obj"
	-@erase "$(INTDIR)\dateroot.obj"
	-@erase "$(INTDIR)\datevalu.obj"
	-@erase "$(INTDIR)\datewday.obj"
	-@erase "$(INTDIR)\datewmy.obj"
	-@erase "$(INTDIR)\dkeyword.obj"
	-@erase "$(INTDIR)\holiday.obj"
	-@erase "$(INTDIR)\ipframe.obj"
	-@erase "$(INTDIR)\julian.obj"
	-@erase "$(INTDIR)\lunar.obj"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\mfcbase.obj"
	-@erase "$(INTDIR)\mfcfont.obj"
	-@erase "$(INTDIR)\nodeitem.obj"
	-@erase "$(INTDIR)\nodejday.obj"
	-@erase "$(INTDIR)\nodelink.obj"
	-@erase "$(INTDIR)\nodeweek.obj"
	-@erase "$(INTDIR)\pegasdoc.obj"
	-@erase "$(INTDIR)\pegasus.obj"
	-@erase "$(INTDIR)\Pegasus.res"
	-@erase "$(INTDIR)\Pegasus.tlb"
	-@erase "$(INTDIR)\PEGASVW.OBJ"
	-@erase "$(INTDIR)\peggyflo.obj"
	-@erase "$(INTDIR)\rcategry.obj"
	-@erase "$(INTDIR)\remappl.obj"
	-@erase "$(INTDIR)\remappnp.obj"
	-@erase "$(INTDIR)\remdoc.obj"
	-@erase "$(INTDIR)\remdocnp.obj"
	-@erase "$(INTDIR)\Remind.pch"
	-@erase "$(INTDIR)\remindde.obj"
	-@erase "$(INTDIR)\remparse.obj"
	-@erase "$(INTDIR)\remvcal.obj"
	-@erase "$(INTDIR)\remvclnp.obj"
	-@erase "$(INTDIR)\remverr.obj"
	-@erase "$(INTDIR)\remview.obj"
	-@erase "$(INTDIR)\remvmon.obj"
	-@erase "$(INTDIR)\remvpend.obj"
	-@erase "$(INTDIR)\remvw.obj"
	-@erase "$(INTDIR)\remvweek.obj"
	-@erase "$(INTDIR)\remvwknp.obj"
	-@erase "$(INTDIR)\REMVWNP.OBJ"
	-@erase "$(INTDIR)\rerror.obj"
	-@erase "$(INTDIR)\ritem.obj"
	-@erase "$(INTDIR)\rmessage.obj"
	-@erase "$(INTDIR)\rstring.obj"
	-@erase "$(INTDIR)\rstyle.obj"
	-@erase "$(INTDIR)\srvritem.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\textline.obj"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\xpappl.obj"
	-@erase "$(INTDIR)\xpapplg.obj"
	-@erase "$(INTDIR)\xpcolor.obj"
	-@erase "$(INTDIR)\xpdoc.obj"
	-@erase "$(INTDIR)\xpdocg.obj"
	-@erase "$(INTDIR)\xpdraw.obj"
	-@erase "$(INTDIR)\xpfont.obj"
	-@erase "$(INTDIR)\xprefcnt.obj"
	-@erase "$(INTDIR)\xpstring.obj"
	-@erase "$(INTDIR)\xpsystem.obj"
	-@erase "$(INTDIR)\xpview.obj"
	-@erase "$(INTDIR)\xpviewg.obj"
	-@erase "$(INTDIR)\zcatalog.obj"
	-@erase "$(INTDIR)\zcategry.obj"
	-@erase "$(INTDIR)\zcatgmgr.obj"
	-@erase "$(INTDIR)\zcatitem.obj"
	-@erase "$(INTDIR)\zstyle.obj"
	-@erase "$(INTDIR)\zstylmgr.obj"
	-@erase "$(OUTDIR)\Remindd.pdb"
	-@erase ".\Remindd.exe"
	-@erase ".\Remindd.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I "u:\peggy\pegasus\mfc" /I "u:\peggy\pegasus" /I "u:\peggy\pleiades" /I "u:\peggy\library\src" /I "u:\peggy\library\src\headers" /I "u:\peggy\library\src\string" /I "u:\peggy\library\src\file" /I "u:\peggy\library\src\util" /I "u:\peggy\library\src\memory" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\peggy\pegasus\mfc" /I "u:\peggy\pegasus" /I\
 "u:\peggy\pleiades" /I "u:\peggy\library\src" /I "u:\peggy\library\src\headers"\
 /I "u:\peggy\library\src\string" /I "u:\peggy\library\src\file" /I\
 "u:\peggy\library\src\util" /I "u:\peggy\library\src\memory" /D "_DEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /Fp"$(INTDIR)/Remind.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\WinDebug/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/Pegasus.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Remind.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 ../library/windebug/library.lib /nologo /subsystem:windows /debug /machine:I386 /nodefaultlib:"libc.lib" /out:"u:\remind\Remindd.exe"
# SUBTRACT LINK32 /verbose /pdb:none /incremental:no
LINK32_FLAGS=../library/windebug/library.lib /nologo /subsystem:windows\
 /incremental:yes /pdb:"$(OUTDIR)/Remindd.pdb" /debug /machine:I386\
 /nodefaultlib:"libc.lib" /out:"u:\remind\Remindd.exe" 
LINK32_OBJS= \
	"$(INTDIR)\cntritem.obj" \
	"$(INTDIR)\datedmy.obj" \
	"$(INTDIR)\dateinc.obj" \
	"$(INTDIR)\datejul.obj" \
	"$(INTDIR)\datemmyy.obj" \
	"$(INTDIR)\datemoon.obj" \
	"$(INTDIR)\dateownr.obj" \
	"$(INTDIR)\datepars.obj" \
	"$(INTDIR)\datepas.obj" \
	"$(INTDIR)\dateroot.obj" \
	"$(INTDIR)\datevalu.obj" \
	"$(INTDIR)\datewday.obj" \
	"$(INTDIR)\datewmy.obj" \
	"$(INTDIR)\dkeyword.obj" \
	"$(INTDIR)\holiday.obj" \
	"$(INTDIR)\ipframe.obj" \
	"$(INTDIR)\julian.obj" \
	"$(INTDIR)\lunar.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\mfcbase.obj" \
	"$(INTDIR)\mfcfont.obj" \
	"$(INTDIR)\nodeitem.obj" \
	"$(INTDIR)\nodejday.obj" \
	"$(INTDIR)\nodelink.obj" \
	"$(INTDIR)\nodeweek.obj" \
	"$(INTDIR)\pegasdoc.obj" \
	"$(INTDIR)\pegasus.obj" \
	"$(INTDIR)\Pegasus.res" \
	"$(INTDIR)\PEGASVW.OBJ" \
	"$(INTDIR)\peggyflo.obj" \
	"$(INTDIR)\rcategry.obj" \
	"$(INTDIR)\remappl.obj" \
	"$(INTDIR)\remappnp.obj" \
	"$(INTDIR)\remdoc.obj" \
	"$(INTDIR)\remdocnp.obj" \
	"$(INTDIR)\remindde.obj" \
	"$(INTDIR)\remparse.obj" \
	"$(INTDIR)\remvcal.obj" \
	"$(INTDIR)\remvclnp.obj" \
	"$(INTDIR)\remverr.obj" \
	"$(INTDIR)\remview.obj" \
	"$(INTDIR)\remvmon.obj" \
	"$(INTDIR)\remvpend.obj" \
	"$(INTDIR)\remvw.obj" \
	"$(INTDIR)\remvweek.obj" \
	"$(INTDIR)\remvwknp.obj" \
	"$(INTDIR)\REMVWNP.OBJ" \
	"$(INTDIR)\rerror.obj" \
	"$(INTDIR)\ritem.obj" \
	"$(INTDIR)\rmessage.obj" \
	"$(INTDIR)\rstring.obj" \
	"$(INTDIR)\rstyle.obj" \
	"$(INTDIR)\srvritem.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\textline.obj" \
	"$(INTDIR)\xpappl.obj" \
	"$(INTDIR)\xpapplg.obj" \
	"$(INTDIR)\xpcolor.obj" \
	"$(INTDIR)\xpdoc.obj" \
	"$(INTDIR)\xpdocg.obj" \
	"$(INTDIR)\xpdraw.obj" \
	"$(INTDIR)\xpfont.obj" \
	"$(INTDIR)\xprefcnt.obj" \
	"$(INTDIR)\xpstring.obj" \
	"$(INTDIR)\xpsystem.obj" \
	"$(INTDIR)\xpview.obj" \
	"$(INTDIR)\xpviewg.obj" \
	"$(INTDIR)\zcatalog.obj" \
	"$(INTDIR)\zcategry.obj" \
	"$(INTDIR)\zcatgmgr.obj" \
	"$(INTDIR)\zcatitem.obj" \
	"$(INTDIR)\zstyle.obj" \
	"$(INTDIR)\zstylmgr.obj" \
	"..\LIBRARY\WinDebug\LIBRARY.LIB"

".\Remindd.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "WinRel"
# PROP BASE Intermediate_Dir "WinRel"
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "WinRel"
# PROP Intermediate_Dir "WinRel"
OUTDIR=.\WinRel
INTDIR=.\WinRel

ALL : ".\Remind.exe" "$(OUTDIR)\Pegasus.tlb"

CLEAN : 
	-@erase "$(INTDIR)\cntritem.obj"
	-@erase "$(INTDIR)\datedmy.obj"
	-@erase "$(INTDIR)\dateinc.obj"
	-@erase "$(INTDIR)\datejul.obj"
	-@erase "$(INTDIR)\datemmyy.obj"
	-@erase "$(INTDIR)\datemoon.obj"
	-@erase "$(INTDIR)\dateownr.obj"
	-@erase "$(INTDIR)\datepars.obj"
	-@erase "$(INTDIR)\datepas.obj"
	-@erase "$(INTDIR)\dateroot.obj"
	-@erase "$(INTDIR)\datevalu.obj"
	-@erase "$(INTDIR)\datewday.obj"
	-@erase "$(INTDIR)\datewmy.obj"
	-@erase "$(INTDIR)\dkeyword.obj"
	-@erase "$(INTDIR)\holiday.obj"
	-@erase "$(INTDIR)\ipframe.obj"
	-@erase "$(INTDIR)\julian.obj"
	-@erase "$(INTDIR)\lunar.obj"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\mfcbase.obj"
	-@erase "$(INTDIR)\mfcfont.obj"
	-@erase "$(INTDIR)\nodeitem.obj"
	-@erase "$(INTDIR)\nodejday.obj"
	-@erase "$(INTDIR)\nodelink.obj"
	-@erase "$(INTDIR)\nodeweek.obj"
	-@erase "$(INTDIR)\pegasdoc.obj"
	-@erase "$(INTDIR)\pegasus.obj"
	-@erase "$(INTDIR)\Pegasus.res"
	-@erase "$(INTDIR)\Pegasus.tlb"
	-@erase "$(INTDIR)\PEGASVW.OBJ"
	-@erase "$(INTDIR)\peggyflo.obj"
	-@erase "$(INTDIR)\rcategry.obj"
	-@erase "$(INTDIR)\remappl.obj"
	-@erase "$(INTDIR)\remappnp.obj"
	-@erase "$(INTDIR)\remdoc.obj"
	-@erase "$(INTDIR)\remdocnp.obj"
	-@erase "$(INTDIR)\Remind.pch"
	-@erase "$(INTDIR)\remindde.obj"
	-@erase "$(INTDIR)\remparse.obj"
	-@erase "$(INTDIR)\remvcal.obj"
	-@erase "$(INTDIR)\remvclnp.obj"
	-@erase "$(INTDIR)\remverr.obj"
	-@erase "$(INTDIR)\remview.obj"
	-@erase "$(INTDIR)\remvmon.obj"
	-@erase "$(INTDIR)\remvpend.obj"
	-@erase "$(INTDIR)\remvw.obj"
	-@erase "$(INTDIR)\remvweek.obj"
	-@erase "$(INTDIR)\remvwknp.obj"
	-@erase "$(INTDIR)\REMVWNP.OBJ"
	-@erase "$(INTDIR)\rerror.obj"
	-@erase "$(INTDIR)\ritem.obj"
	-@erase "$(INTDIR)\rmessage.obj"
	-@erase "$(INTDIR)\rstring.obj"
	-@erase "$(INTDIR)\rstyle.obj"
	-@erase "$(INTDIR)\srvritem.obj"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\textline.obj"
	-@erase "$(INTDIR)\xpappl.obj"
	-@erase "$(INTDIR)\xpapplg.obj"
	-@erase "$(INTDIR)\xpcolor.obj"
	-@erase "$(INTDIR)\xpdoc.obj"
	-@erase "$(INTDIR)\xpdocg.obj"
	-@erase "$(INTDIR)\xpdraw.obj"
	-@erase "$(INTDIR)\xpfont.obj"
	-@erase "$(INTDIR)\xprefcnt.obj"
	-@erase "$(INTDIR)\xpstring.obj"
	-@erase "$(INTDIR)\xpsystem.obj"
	-@erase "$(INTDIR)\xpview.obj"
	-@erase "$(INTDIR)\xpviewg.obj"
	-@erase "$(INTDIR)\zcatalog.obj"
	-@erase "$(INTDIR)\zcategry.obj"
	-@erase "$(INTDIR)\zcatgmgr.obj"
	-@erase "$(INTDIR)\zcatitem.obj"
	-@erase "$(INTDIR)\zstyle.obj"
	-@erase "$(INTDIR)\zstylmgr.obj"
	-@erase ".\Remind.exe"
	-@erase ".\Remind.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I "u:\peggy\pegasus\mfc" /I "u:\peggy\pegasus" /I "u:\peggy\pleiades" /I "u:\peggy\library\src" /I "u:\peggy\library\src\headers" /I "u:\peggy\library\src\string" /I "u:\peggy\library\src\file" /I "u:\peggy\library\src\util" /I "u:\peggy\library\src\memory" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# SUBTRACT CPP /Fr
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\peggy\pegasus\mfc" /I "u:\peggy\pegasus" /I "u:\peggy\pleiades" /I\
 "u:\peggy\library\src" /I "u:\peggy\library\src\headers" /I\
 "u:\peggy\library\src\string" /I "u:\peggy\library\src\file" /I\
 "u:\peggy\library\src\util" /I "u:\peggy\library\src\memory" /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /Fp"$(INTDIR)/Remind.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\WinRel/
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/Pegasus.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Remind.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 ../library/windebug/library.lib /nologo /subsystem:windows /incremental:yes /machine:I386 /nodefaultlib:"libc.lib" /out:"u:\remind\Remind.exe"
# SUBTRACT LINK32 /verbose /pdb:none
LINK32_FLAGS=../library/windebug/library.lib /nologo /subsystem:windows\
 /incremental:yes /pdb:"$(OUTDIR)/Remind.pdb" /machine:I386\
 /nodefaultlib:"libc.lib" /out:"u:\remind\Remind.exe" 
LINK32_OBJS= \
	"$(INTDIR)\cntritem.obj" \
	"$(INTDIR)\datedmy.obj" \
	"$(INTDIR)\dateinc.obj" \
	"$(INTDIR)\datejul.obj" \
	"$(INTDIR)\datemmyy.obj" \
	"$(INTDIR)\datemoon.obj" \
	"$(INTDIR)\dateownr.obj" \
	"$(INTDIR)\datepars.obj" \
	"$(INTDIR)\datepas.obj" \
	"$(INTDIR)\dateroot.obj" \
	"$(INTDIR)\datevalu.obj" \
	"$(INTDIR)\datewday.obj" \
	"$(INTDIR)\datewmy.obj" \
	"$(INTDIR)\dkeyword.obj" \
	"$(INTDIR)\holiday.obj" \
	"$(INTDIR)\ipframe.obj" \
	"$(INTDIR)\julian.obj" \
	"$(INTDIR)\lunar.obj" \
	"$(INTDIR)\mainfrm.obj" \
	"$(INTDIR)\mfcbase.obj" \
	"$(INTDIR)\mfcfont.obj" \
	"$(INTDIR)\nodeitem.obj" \
	"$(INTDIR)\nodejday.obj" \
	"$(INTDIR)\nodelink.obj" \
	"$(INTDIR)\nodeweek.obj" \
	"$(INTDIR)\pegasdoc.obj" \
	"$(INTDIR)\pegasus.obj" \
	"$(INTDIR)\Pegasus.res" \
	"$(INTDIR)\PEGASVW.OBJ" \
	"$(INTDIR)\peggyflo.obj" \
	"$(INTDIR)\rcategry.obj" \
	"$(INTDIR)\remappl.obj" \
	"$(INTDIR)\remappnp.obj" \
	"$(INTDIR)\remdoc.obj" \
	"$(INTDIR)\remdocnp.obj" \
	"$(INTDIR)\remindde.obj" \
	"$(INTDIR)\remparse.obj" \
	"$(INTDIR)\remvcal.obj" \
	"$(INTDIR)\remvclnp.obj" \
	"$(INTDIR)\remverr.obj" \
	"$(INTDIR)\remview.obj" \
	"$(INTDIR)\remvmon.obj" \
	"$(INTDIR)\remvpend.obj" \
	"$(INTDIR)\remvw.obj" \
	"$(INTDIR)\remvweek.obj" \
	"$(INTDIR)\remvwknp.obj" \
	"$(INTDIR)\REMVWNP.OBJ" \
	"$(INTDIR)\rerror.obj" \
	"$(INTDIR)\ritem.obj" \
	"$(INTDIR)\rmessage.obj" \
	"$(INTDIR)\rstring.obj" \
	"$(INTDIR)\rstyle.obj" \
	"$(INTDIR)\srvritem.obj" \
	"$(INTDIR)\stdafx.obj" \
	"$(INTDIR)\textline.obj" \
	"$(INTDIR)\xpappl.obj" \
	"$(INTDIR)\xpapplg.obj" \
	"$(INTDIR)\xpcolor.obj" \
	"$(INTDIR)\xpdoc.obj" \
	"$(INTDIR)\xpdocg.obj" \
	"$(INTDIR)\xpdraw.obj" \
	"$(INTDIR)\xpfont.obj" \
	"$(INTDIR)\xprefcnt.obj" \
	"$(INTDIR)\xpstring.obj" \
	"$(INTDIR)\xpsystem.obj" \
	"$(INTDIR)\xpview.obj" \
	"$(INTDIR)\xpviewg.obj" \
	"$(INTDIR)\zcatalog.obj" \
	"$(INTDIR)\zcategry.obj" \
	"$(INTDIR)\zcatgmgr.obj" \
	"$(INTDIR)\zcatitem.obj" \
	"$(INTDIR)\zstyle.obj" \
	"$(INTDIR)\zstylmgr.obj" \
	"..\LIBRARY\WinDebug\LIBRARY.LIB"

".\Remind.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "Pegasus - Win32 Debug"
# Name "Pegasus - Win32 Release"

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\Pegasus.odl

!IF  "$(CFG)" == "Pegasus - Win32 Debug"


"$(OUTDIR)\Pegasus.tlb" : $(SOURCE) "$(OUTDIR)"
   $(MTL) /nologo /D "_DEBUG" /tlb "$(OUTDIR)/Pegasus.tlb" /win32 $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


"$(OUTDIR)\Pegasus.tlb" : $(SOURCE) "$(OUTDIR)"
   $(MTL) /nologo /D "NDEBUG" /tlb "$(OUTDIR)/Pegasus.tlb" /win32 $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\PEGASVW.CPP
DEP_CPP_PEGAS=\
	".\REM\mfc\cntritem.h"\
	".\REM\mfc\pegasdoc.h"\
	".\REM\mfc\pegasus.h"\
	".\REM\mfc\PEGASVW.H"\
	".\rem\mfc\stdafx.h"\
	

"$(INTDIR)\PEGASVW.OBJ" : $(SOURCE) $(DEP_CPP_PEGAS) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\mainfrm.cpp

"$(INTDIR)\mainfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\peggyflo.cpp
DEP_CPP_PEGGY=\
	".\REM\mfc\pegasus.h"\
	".\REM\mfc\peggyflo.h"\
	".\rem\mfc\stdafx.h"\
	

"$(INTDIR)\peggyflo.obj" : $(SOURCE) $(DEP_CPP_PEGGY) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\Pegasus.rc
DEP_RSC_PEGASU=\
	".\REM\mfc\res\bmp00001.bmp"\
	".\REM\mfc\res\ico00001.ico"\
	".\REM\mfc\res\ico00002.ico"\
	".\REM\mfc\res\icon1.ico"\
	".\REM\mfc\res\idr_main.ico"\
	".\REM\mfc\res\idr_pega.bmp"\
	".\REM\mfc\res\idr_pega.ico"\
	".\REM\mfc\res\itoolbar.bmp"\
	".\REM\mfc\res\Pegasdoc.ico"\
	".\REM\mfc\res\Pegasus.ico"\
	".\REM\mfc\res\Pegasus.rc2"\
	".\REM\mfc\res\rdrdrive.ico"\
	".\REM\mfc\res\remind.ico"\
	".\REM\mfc\res\toolbar.bmp"\
	

!IF  "$(CFG)" == "Pegasus - Win32 Debug"


"$(INTDIR)\Pegasus.res" : $(SOURCE) $(DEP_RSC_PEGASU) "$(INTDIR)"
   $(RSC) /l 0x409 /fo"$(INTDIR)/Pegasus.res" /i "REM\mfc" /i "WinDebug" /d\
 "_DEBUG" /d "_AFXDLL" $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


"$(INTDIR)\Pegasus.res" : $(SOURCE) $(DEP_RSC_PEGASU) "$(INTDIR)"
   $(RSC) /l 0x409 /fo"$(INTDIR)/Pegasus.res" /i "REM\mfc" /i "WinRel" /d\
 "NDEBUG" /d "_AFXDLL" $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\srvritem.cpp
DEP_CPP_SRVRI=\
	".\REM\mfc\cntritem.h"\
	".\REM\mfc\pegasdoc.h"\
	".\REM\mfc\pegasus.h"\
	".\REM\mfc\srvritem.h"\
	".\rem\mfc\stdafx.h"\
	

"$(INTDIR)\srvritem.obj" : $(SOURCE) $(DEP_CPP_SRVRI) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\stdafx.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\peggy\pegasus\mfc" /I "u:\peggy\pegasus" /I\
 "u:\peggy\pleiades" /I "u:\peggy\library\src" /I "u:\peggy\library\src\headers"\
 /I "u:\peggy\library\src\string" /I "u:\peggy\library\src\file" /I\
 "u:\peggy\library\src\util" /I "u:\peggy\library\src\memory" /D "_DEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /Fp"$(INTDIR)/Remind.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\stdafx.obj" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\Remind.pch" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\peggy\pegasus\mfc" /I "u:\peggy\pegasus" /I "u:\peggy\pleiades" /I\
 "u:\peggy\library\src" /I "u:\peggy\library\src\headers" /I\
 "u:\peggy\library\src\string" /I "u:\peggy\library\src\file" /I\
 "u:\peggy\library\src\util" /I "u:\peggy\library\src\memory" /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /Fp"$(INTDIR)/Remind.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\stdafx.obj" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\Remind.pch" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\cntritem.cpp
DEP_CPP_CNTRI=\
	".\REM\mfc\cntritem.h"\
	".\REM\mfc\pegasdoc.h"\
	".\REM\mfc\pegasus.h"\
	".\rem\mfc\stdafx.h"\
	

"$(INTDIR)\cntritem.obj" : $(SOURCE) $(DEP_CPP_CNTRI) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\pegasus.cpp
DEP_CPP_PEGASUS=\
	".\REM\mfc\ipframe.h"\
	".\REM\mfc\mainfrm.h"\
	".\REM\mfc\pegasdoc.h"\
	".\REM\mfc\pegasus.h"\
	".\REM\mfc\PEGASVW.H"\
	".\REM\mfc\remindde.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	

"$(INTDIR)\pegasus.obj" : $(SOURCE) $(DEP_CPP_PEGASUS) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\ipframe.cpp
DEP_CPP_IPFRA=\
	".\REM\mfc\ipframe.h"\
	".\REM\mfc\pegasus.h"\
	".\rem\mfc\stdafx.h"\
	

"$(INTDIR)\ipframe.obj" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\remindde.cpp
DEP_CPP_REMIN=\
	".\REM\mfc\pegasus.h"\
	".\REM\mfc\remindde.h"\
	".\rem\mfc\stdafx.h"\
	

"$(INTDIR)\remindde.obj" : $(SOURCE) $(DEP_CPP_REMIN) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\pegasdoc.cpp
DEP_CPP_PEGASD=\
	".\REM\mfc\cntritem.h"\
	".\REM\mfc\pegasdoc.h"\
	".\REM\mfc\pegasus.h"\
	".\REM\mfc\PEGASVW.H"\
	".\REM\mfc\srvritem.h"\
	".\rem\mfc\stdafx.h"\
	

"$(INTDIR)\pegasdoc.obj" : $(SOURCE) $(DEP_CPP_PEGASD) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\PEGASUS\xpsystem.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPSYS=\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\PEGASUS\xpsystem.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\library\src\file\filespec.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\externc.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\library\src\string\bearstr.h"\
	"\peggy\library\src\util\severity.h"\
	"\peggy\pegasus\framwork.h"\
	"u:\peggy\library\src\file\fileerr.h"\
	"u:\peggy\library\src\file\filesmsg.h"\
	

"$(INTDIR)\xpsystem.obj" : $(SOURCE) $(DEP_CPP_XPSYS) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPSYS=\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\PEGASUS\xpsystem.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\pegasus\framwork.h"\
	
NODEP_CPP_XPSYS=\
	"..\peggy\PEGASUS\bearstr.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\PEGASUS\filespec.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	

"$(INTDIR)\xpsystem.obj" : $(SOURCE) $(DEP_CPP_XPSYS) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xpviewg.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPVIE=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdocb.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpstring.h"\
	"..\peggy\pegasus\xpviewg.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	"\peggy\library\src\file\filespec.h"\
	"\peggy\library\src\headers\beardefs.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\externc.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\library\src\memory\bcmemptr.h"\
	"\peggy\library\src\string\bcstring.h"\
	"\peggy\library\src\util\severity.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcbase.h"\
	"\peggy\pegasus\mfc\mfcdoc.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\mfc\mfcglue.h"\
	"\peggy\pegasus\xpdoc.h"\
	"\peggy\pegasus\xpdyn.h"\
	"\peggy\pegasus\xprefcnt.h"\
	"u:\peggy\library\src\file\fileerr.h"\
	"u:\peggy\library\src\file\filesmsg.h"\
	"u:\peggy\library\src\memory\bcmem.h"\
	
NODEP_CPP_XPVIE=\
	"..\peggy\pegasus\xdoc.h"\
	"..\peggy\pegasus\XLMultiDoc.h"\
	

"$(INTDIR)\xpviewg.obj" : $(SOURCE) $(DEP_CPP_XPVIE) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPVIE=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdocb.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpstring.h"\
	"..\peggy\pegasus\xpviewg.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcbase.h"\
	"\peggy\pegasus\mfc\mfcdoc.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\mfc\mfcglue.h"\
	"\peggy\pegasus\xpdoc.h"\
	"\peggy\pegasus\xpdyn.h"\
	"\peggy\pegasus\xprefcnt.h"\
	
NODEP_CPP_XPVIE=\
	"..\peggy\pegasus\bcstring.h"\
	"..\peggy\pegasus\beardefs.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\PEGASUS\filespec.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	"..\peggy\pegasus\xdoc.h"\
	"..\peggy\pegasus\XLMultiDoc.h"\
	

"$(INTDIR)\xpviewg.obj" : $(SOURCE) $(DEP_CPP_XPVIE) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xpdraw.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPDRA=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdocb.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpstring.h"\
	"..\peggy\pegasus\xpviewg.h"\
	"..\peggy\pegasus\xpviewt.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	"\peggy\library\src\file\filespec.h"\
	"\peggy\library\src\headers\beardefs.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\externc.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\library\src\memory\bcmemptr.h"\
	"\peggy\library\src\string\bcstring.h"\
	"\peggy\library\src\string\bearstr.h"\
	"\peggy\library\src\util\severity.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcbase.h"\
	"\peggy\pegasus\mfc\mfcdoc.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\mfc\mfcglue.h"\
	"\peggy\pegasus\mfc\mfcview.h"\
	"\peggy\pegasus\xpdoc.h"\
	"\peggy\pegasus\xpdyn.h"\
	"\peggy\pegasus\xprefcnt.h"\
	"u:\peggy\library\src\file\fileerr.h"\
	"u:\peggy\library\src\file\filesmsg.h"\
	"u:\peggy\library\src\memory\bcmem.h"\
	{$(INCLUDE)}"\UWINDOWS.H"\
	
NODEP_CPP_XPDRA=\
	"..\peggy\pegasus\xdoc.h"\
	"..\peggy\pegasus\XLMultiDoc.h"\
	

"$(INTDIR)\xpdraw.obj" : $(SOURCE) $(DEP_CPP_XPDRA) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPDRA=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdocb.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpstring.h"\
	"..\peggy\pegasus\xpviewg.h"\
	"..\peggy\pegasus\xpviewt.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcbase.h"\
	"\peggy\pegasus\mfc\mfcdoc.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\mfc\mfcglue.h"\
	"\peggy\pegasus\mfc\mfcview.h"\
	"\peggy\pegasus\xpdoc.h"\
	"\peggy\pegasus\xpdyn.h"\
	"\peggy\pegasus\xprefcnt.h"\
	{$(INCLUDE)}"\UWINDOWS.H"\
	
NODEP_CPP_XPDRA=\
	"..\peggy\pegasus\bcstring.h"\
	"..\peggy\pegasus\beardefs.h"\
	"..\peggy\PEGASUS\bearstr.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\PEGASUS\filespec.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	"..\peggy\pegasus\xdoc.h"\
	"..\peggy\pegasus\XLMultiDoc.h"\
	

"$(INTDIR)\xpdraw.obj" : $(SOURCE) $(DEP_CPP_XPDRA) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xpapplg.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPAPP=\
	"..\peggy\pegasus\xpapplg.h"\
	"..\peggy\pegasus\xpstring.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\library\src\file\filespec.h"\
	"\peggy\library\src\headers\beardefs.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\externc.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\library\src\memory\bcmemptr.h"\
	"\peggy\library\src\string\bcstring.h"\
	"\peggy\library\src\util\severity.h"\
	"\peggy\pegasus\framwork.h"\
	"u:\peggy\library\src\file\fileerr.h"\
	"u:\peggy\library\src\file\filesmsg.h"\
	"u:\peggy\library\src\memory\bcmem.h"\
	

"$(INTDIR)\xpapplg.obj" : $(SOURCE) $(DEP_CPP_XPAPP) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPAPP=\
	"..\peggy\pegasus\xpapplg.h"\
	"..\peggy\pegasus\xpstring.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\pegasus\framwork.h"\
	
NODEP_CPP_XPAPP=\
	"..\peggy\pegasus\bcstring.h"\
	"..\peggy\pegasus\beardefs.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\PEGASUS\filespec.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	

"$(INTDIR)\xpapplg.obj" : $(SOURCE) $(DEP_CPP_XPAPP) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xpview.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPVIEW=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\pegasus\xpassert.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdocb.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpstring.h"\
	"..\peggy\pegasus\xpviewb.h"\
	"..\peggy\pegasus\xpviewg.h"\
	"..\peggy\pegasus\xpviewt.cpp"\
	"..\peggy\pegasus\xpviewt.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	"\peggy\library\src\file\filespec.h"\
	"\peggy\library\src\headers\beardefs.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\compiler.h"\
	"\peggy\library\src\headers\externc.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\library\src\memory\bcmemptr.h"\
	"\peggy\library\src\string\bcstring.h"\
	"\peggy\library\src\string\bearstr.h"\
	"\peggy\library\src\util\severity.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcbase.h"\
	"\peggy\pegasus\mfc\mfcdoc.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\mfc\mfcglue.h"\
	"\peggy\pegasus\mfc\mfcview.h"\
	"\peggy\pegasus\xpdoc.h"\
	"\peggy\pegasus\xpdyn.h"\
	"\peggy\pegasus\xprefcnt.h"\
	"\peggy\pegasus\xpview.h"\
	"u:\peggy\library\src\file\fileerr.h"\
	"u:\peggy\library\src\file\filesmsg.h"\
	"u:\peggy\library\src\memory\bcmem.h"\
	{$(INCLUDE)}"\UWINDOWS.H"\
	
NODEP_CPP_XPVIEW=\
	"..\peggy\pegasus\UDebugging.h"\
	"..\peggy\pegasus\xdoc.h"\
	"..\peggy\pegasus\XLMultiDoc.h"\
	"..\peggy\pegasus\XLViewCmdr.h"\
	"..\peggy\pegasus\XLWindow.h"\
	"..\peggy\pegasus\xview.h"\
	

"$(INTDIR)\xpview.obj" : $(SOURCE) $(DEP_CPP_XPVIEW) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPVIEW=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\pegasus\xpassert.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdocb.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpstring.h"\
	"..\peggy\pegasus\xpviewb.h"\
	"..\peggy\pegasus\xpviewg.h"\
	"..\peggy\pegasus\xpviewt.cpp"\
	"..\peggy\pegasus\xpviewt.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcbase.h"\
	"\peggy\pegasus\mfc\mfcdoc.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\mfc\mfcglue.h"\
	"\peggy\pegasus\mfc\mfcview.h"\
	"\peggy\pegasus\xpdoc.h"\
	"\peggy\pegasus\xpdyn.h"\
	"\peggy\pegasus\xprefcnt.h"\
	"\peggy\pegasus\xpview.h"\
	{$(INCLUDE)}"\UWINDOWS.H"\
	
NODEP_CPP_XPVIEW=\
	"..\peggy\pegasus\bcstring.h"\
	"..\peggy\pegasus\beardefs.h"\
	"..\peggy\PEGASUS\bearstr.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\pegasus\compiler.h"\
	"..\peggy\PEGASUS\filespec.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	"..\peggy\pegasus\UDebugging.h"\
	"..\peggy\pegasus\xdoc.h"\
	"..\peggy\pegasus\XLMultiDoc.h"\
	"..\peggy\pegasus\XLViewCmdr.h"\
	"..\peggy\pegasus\XLWindow.h"\
	"..\peggy\pegasus\xview.h"\
	

"$(INTDIR)\xpview.obj" : $(SOURCE) $(DEP_CPP_XPVIEW) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xpdoc.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPDOC=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdocb.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpstring.h"\
	"..\peggy\pegasus\xpviewb.h"\
	"..\peggy\pegasus\xpviewg.h"\
	"..\peggy\pegasus\xpviewt.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	"\peggy\library\src\file\filespec.h"\
	"\peggy\library\src\headers\beardefs.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\externc.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\library\src\memory\bcmemptr.h"\
	"\peggy\library\src\string\bcstring.h"\
	"\peggy\library\src\string\bearstr.h"\
	"\peggy\library\src\util\severity.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcbase.h"\
	"\peggy\pegasus\mfc\mfcdoc.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\mfc\mfcglue.h"\
	"\peggy\pegasus\mfc\mfcview.h"\
	"\peggy\pegasus\xpdoc.h"\
	"\peggy\pegasus\xpdyn.h"\
	"\peggy\pegasus\xprefcnt.h"\
	"\peggy\pegasus\xpview.h"\
	"u:\peggy\library\src\file\fileerr.h"\
	"u:\peggy\library\src\file\filesmsg.h"\
	"u:\peggy\library\src\memory\bcmem.h"\
	{$(INCLUDE)}"\UWINDOWS.H"\
	
NODEP_CPP_XPDOC=\
	"..\peggy\pegasus\xdoc.h"\
	"..\peggy\pegasus\XLMultiDoc.h"\
	"..\peggy\pegasus\XLViewCmdr.h"\
	"..\peggy\pegasus\XLWindow.h"\
	"..\peggy\pegasus\xview.h"\
	

"$(INTDIR)\xpdoc.obj" : $(SOURCE) $(DEP_CPP_XPDOC) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPDOC=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdocb.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpstring.h"\
	"..\peggy\pegasus\xpviewb.h"\
	"..\peggy\pegasus\xpviewg.h"\
	"..\peggy\pegasus\xpviewt.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcbase.h"\
	"\peggy\pegasus\mfc\mfcdoc.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\mfc\mfcglue.h"\
	"\peggy\pegasus\mfc\mfcview.h"\
	"\peggy\pegasus\xpdoc.h"\
	"\peggy\pegasus\xpdyn.h"\
	"\peggy\pegasus\xprefcnt.h"\
	"\peggy\pegasus\xpview.h"\
	{$(INCLUDE)}"\UWINDOWS.H"\
	
NODEP_CPP_XPDOC=\
	"..\peggy\pegasus\bcstring.h"\
	"..\peggy\pegasus\beardefs.h"\
	"..\peggy\PEGASUS\bearstr.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\PEGASUS\filespec.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	"..\peggy\pegasus\xdoc.h"\
	"..\peggy\pegasus\XLMultiDoc.h"\
	"..\peggy\pegasus\XLViewCmdr.h"\
	"..\peggy\pegasus\XLWindow.h"\
	"..\peggy\pegasus\xview.h"\
	

"$(INTDIR)\xpdoc.obj" : $(SOURCE) $(DEP_CPP_XPDOC) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xpdocg.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPDOCG=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpstring.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\library\src\file\filespec.h"\
	"\peggy\library\src\headers\beardefs.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\externc.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\library\src\memory\bcmemptr.h"\
	"\peggy\library\src\string\bcstring.h"\
	"\peggy\library\src\util\severity.h"\
	"\peggy\pegasus\framwork.h"\
	"u:\peggy\library\src\file\fileerr.h"\
	"u:\peggy\library\src\file\filesmsg.h"\
	"u:\peggy\library\src\memory\bcmem.h"\
	

"$(INTDIR)\xpdocg.obj" : $(SOURCE) $(DEP_CPP_XPDOCG) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPDOCG=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpstring.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\pegasus\framwork.h"\
	
NODEP_CPP_XPDOCG=\
	"..\peggy\pegasus\bcstring.h"\
	"..\peggy\pegasus\beardefs.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\PEGASUS\filespec.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	

"$(INTDIR)\xpdocg.obj" : $(SOURCE) $(DEP_CPP_XPDOCG) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xpfont.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPFON=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\pegasus\xpassert.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpviewg.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\library\src\headers\beardefs.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\compiler.h"\
	"\peggy\library\src\headers\externc.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\library\src\memory\mem.h"\
	"\peggy\library\src\string\bearstr.h"\
	"\peggy\library\src\util\severity.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\xprefcnt.h"\
	
NODEP_CPP_XPFON=\
	"..\peggy\pegasus\UDebugging.h"\
	

"$(INTDIR)\xpfont.obj" : $(SOURCE) $(DEP_CPP_XPFON) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPFON=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\pegasus\xpassert.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpviewg.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\xprefcnt.h"\
	
NODEP_CPP_XPFON=\
	"..\peggy\pegasus\beardefs.h"\
	"..\peggy\PEGASUS\bearstr.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\pegasus\compiler.h"\
	"..\peggy\pegasus\externc.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	"..\peggy\pegasus\mem.h"\
	"..\peggy\pegasus\UDebugging.h"\
	

"$(INTDIR)\xpfont.obj" : $(SOURCE) $(DEP_CPP_XPFON) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xpstring.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPSTR=\
	"..\peggy\pegasus\xpstring.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\library\src\headers\beardefs.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\library\src\memory\bcmemptr.h"\
	"\peggy\library\src\string\bcstring.h"\
	"\peggy\pegasus\framwork.h"\
	"u:\peggy\library\src\memory\bcmem.h"\
	

"$(INTDIR)\xpstring.obj" : $(SOURCE) $(DEP_CPP_XPSTR) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPSTR=\
	"..\peggy\pegasus\xpstring.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\pegasus\framwork.h"\
	
NODEP_CPP_XPSTR=\
	"..\peggy\pegasus\bcstring.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	

"$(INTDIR)\xpstring.obj" : $(SOURCE) $(DEP_CPP_XPSTR) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xpcolor.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPCOL=\
	"..\peggy\PEGASUS\xpcolor.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\pegasus\framwork.h"\
	

"$(INTDIR)\xpcolor.obj" : $(SOURCE) $(DEP_CPP_XPCOL) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPCOL=\
	"..\peggy\PEGASUS\xpcolor.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\pegasus\framwork.h"\
	
NODEP_CPP_XPCOL=\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	

"$(INTDIR)\xpcolor.obj" : $(SOURCE) $(DEP_CPP_XPCOL) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xpappl.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPAPPL=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\pegasus\xpappl.h"\
	"..\peggy\pegasus\xpapplb.h"\
	"..\peggy\pegasus\xpapplg.h"\
	"..\peggy\pegasus\xpassert.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdocb.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpstring.h"\
	"..\peggy\PEGASUS\xpsystem.h"\
	"..\peggy\pegasus\xpviewb.h"\
	"..\peggy\pegasus\xpviewg.h"\
	"..\peggy\pegasus\xpviewt.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	"\peggy\library\src\file\filespec.h"\
	"\peggy\library\src\headers\beardefs.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\compiler.h"\
	"\peggy\library\src\headers\externc.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\library\src\memory\bcmemptr.h"\
	"\peggy\library\src\string\bcstring.h"\
	"\peggy\library\src\string\bearstr.h"\
	"\peggy\library\src\util\severity.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcappl.h"\
	"\peggy\pegasus\mfc\mfcbase.h"\
	"\peggy\pegasus\mfc\mfcdoc.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\mfc\mfcglue.h"\
	"\peggy\pegasus\mfc\mfcview.h"\
	"\peggy\pegasus\xpdoc.h"\
	"\peggy\pegasus\xpdyn.h"\
	"\peggy\pegasus\xprefcnt.h"\
	"\peggy\pegasus\xpview.h"\
	"u:\peggy\library\src\file\fileerr.h"\
	"u:\peggy\library\src\file\filesmsg.h"\
	"u:\peggy\library\src\memory\bcmem.h"\
	{$(INCLUDE)}"\UWINDOWS.H"\
	
NODEP_CPP_XPAPPL=\
	"..\peggy\pegasus\about.h"\
	"..\peggy\pegasus\UDebugging.h"\
	"..\peggy\pegasus\xapplic.h"\
	"..\peggy\pegasus\xdoc.h"\
	"..\peggy\pegasus\XLDocApplication.h"\
	"..\peggy\pegasus\XLMultiDoc.h"\
	"..\peggy\pegasus\XLViewCmdr.h"\
	"..\peggy\pegasus\XLWindow.h"\
	"..\peggy\pegasus\xview.h"\
	

"$(INTDIR)\xpappl.obj" : $(SOURCE) $(DEP_CPP_XPAPPL) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPAPPL=\
	"..\peggy\pegasus\utypes.h"\
	"..\peggy\pegasus\xpappl.h"\
	"..\peggy\pegasus\xpapplb.h"\
	"..\peggy\pegasus\xpapplg.h"\
	"..\peggy\pegasus\xpassert.h"\
	"..\peggy\PEGASUS\xpcolor.h"\
	"..\peggy\pegasus\xpdocb.h"\
	"..\peggy\pegasus\xpdocg.h"\
	"..\peggy\pegasus\xpdraw.h"\
	"..\peggy\pegasus\xpdrawb.h"\
	"..\peggy\pegasus\xpfont.h"\
	"..\peggy\pegasus\xpstring.h"\
	"..\peggy\PEGASUS\xpsystem.h"\
	"..\peggy\pegasus\xpviewb.h"\
	"..\peggy\pegasus\xpviewg.h"\
	"..\peggy\pegasus\xpviewt.h"\
	".\rem\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\mfc\mfcappl.h"\
	"\peggy\pegasus\mfc\mfcbase.h"\
	"\peggy\pegasus\mfc\mfcdoc.h"\
	"\peggy\pegasus\mfc\mfcfont.h"\
	"\peggy\pegasus\mfc\mfcglue.h"\
	"\peggy\pegasus\mfc\mfcview.h"\
	"\peggy\pegasus\xpdoc.h"\
	"\peggy\pegasus\xpdyn.h"\
	"\peggy\pegasus\xprefcnt.h"\
	"\peggy\pegasus\xpview.h"\
	{$(INCLUDE)}"\UWINDOWS.H"\
	
NODEP_CPP_XPAPPL=\
	"..\peggy\pegasus\about.h"\
	"..\peggy\pegasus\bcstring.h"\
	"..\peggy\pegasus\beardefs.h"\
	"..\peggy\PEGASUS\bearstr.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\pegasus\compiler.h"\
	"..\peggy\PEGASUS\filespec.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	"..\peggy\pegasus\UDebugging.h"\
	"..\peggy\pegasus\xapplic.h"\
	"..\peggy\pegasus\xdoc.h"\
	"..\peggy\pegasus\XLDocApplication.h"\
	"..\peggy\pegasus\XLMultiDoc.h"\
	"..\peggy\pegasus\XLViewCmdr.h"\
	"..\peggy\pegasus\XLWindow.h"\
	"..\peggy\pegasus\xview.h"\
	

"$(INTDIR)\xpappl.obj" : $(SOURCE) $(DEP_CPP_XPAPPL) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\MFC\mfcfont.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"


"$(INTDIR)\mfcfont.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_MFCFO=\
	"..\pegasus\framwork.h"\
	"..\pegasus\mfc\mfcfont.h"\
	"..\pegasus\xprefcnt.h"\
	".\REM\mfc\rempch++"\
	".\rem\mfc\stdafx.h"\
	
NODEP_CPP_MFCFO=\
	"..\PEGASUS\beartype.h"\
	"..\PEGASUS\inclnest.h"\
	"..\PEGASUS\inclunst.h"\
	"..\PEGASUS\machine.h"\
	

"$(INTDIR)\mfcfont.obj" : $(SOURCE) $(DEP_CPP_MFCFO) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pegasus\xprefcnt.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

DEP_CPP_XPREF=\
	"..\peggy\pegasus\xpassert.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\library\src\headers\beardefs.h"\
	"\peggy\library\src\headers\beartype.h"\
	"\peggy\library\src\headers\compiler.h"\
	"\peggy\library\src\headers\inclnest.h"\
	"\peggy\library\src\headers\inclunst.h"\
	"\peggy\library\src\headers\machine.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\xprefcnt.h"\
	
NODEP_CPP_XPREF=\
	"..\peggy\pegasus\UDebugging.h"\
	

"$(INTDIR)\xprefcnt.obj" : $(SOURCE) $(DEP_CPP_XPREF) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_XPREF=\
	"..\peggy\pegasus\xpassert.h"\
	".\rem\mfc\stdafx.h"\
	"\peggy\pegasus\framwork.h"\
	"\peggy\pegasus\xprefcnt.h"\
	
NODEP_CPP_XPREF=\
	"..\peggy\pegasus\beardefs.h"\
	"..\peggy\pegasus\beartype.h"\
	"..\peggy\pegasus\compiler.h"\
	"..\peggy\pegasus\inclnest.h"\
	"..\peggy\pegasus\inclunst.h"\
	"..\peggy\pegasus\machine.h"\
	"..\peggy\pegasus\UDebugging.h"\
	

"$(INTDIR)\xprefcnt.obj" : $(SOURCE) $(DEP_CPP_XPREF) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\MFC\mfcbase.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"


"$(INTDIR)\mfcbase.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_MFCBA=\
	"..\pegasus\framwork.h"\
	"..\pegasus\mfc\mfcbase.h"\
	"..\pegasus\xpdyn.h"\
	".\REM\mfc\rempch++"\
	".\rem\mfc\stdafx.h"\
	
NODEP_CPP_MFCBA=\
	"..\PEGASUS\inclnest.h"\
	"..\PEGASUS\inclunst.h"\
	"..\PEGASUS\machine.h"\
	

"$(INTDIR)\mfcbase.obj" : $(SOURCE) $(DEP_CPP_MFCBA) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\LIBRARY\WinDebug\LIBRARY.LIB

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datedmy.cpp

"$(INTDIR)\datedmy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\dateinc.cpp

"$(INTDIR)\dateinc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datejul.cpp

"$(INTDIR)\datejul.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datemmyy.cpp

"$(INTDIR)\datemmyy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datemoon.cpp

"$(INTDIR)\datemoon.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\dateownr.cpp

"$(INTDIR)\dateownr.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datepars.cpp

"$(INTDIR)\datepars.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\dateroot.cpp

"$(INTDIR)\dateroot.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datevalu.cpp

"$(INTDIR)\datevalu.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datewday.cpp

"$(INTDIR)\datewday.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datewmy.cpp

"$(INTDIR)\datewmy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\dkeyword.cpp

"$(INTDIR)\dkeyword.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\julian.cpp

"$(INTDIR)\julian.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\nodeitem.cpp

"$(INTDIR)\nodeitem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\nodejday.cpp

"$(INTDIR)\nodejday.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\nodelink.cpp

"$(INTDIR)\nodelink.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\nodeweek.cpp

"$(INTDIR)\nodeweek.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remappl.cpp

"$(INTDIR)\remappl.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remdoc.cpp

"$(INTDIR)\remdoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remdocnp.cpp

"$(INTDIR)\remdocnp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remview.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"


"$(INTDIR)\remview.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

DEP_CPP_REMVI=\
	".\REM\datevalu.h"\
	".\REM\julian.h"\
	".\rem\mfc\stdafx.h"\
	".\REM\nodejday.h"\
	".\REM\remdoc.h"\
	".\REM\remview.h"\
	
NODEP_CPP_REMVI=\
	".\REM\beardefs.h"\
	".\REM\inclnest.h"\
	".\REM\inclunst.h"\
	".\REM\xpview.h"\
	

"$(INTDIR)\remview.obj" : $(SOURCE) $(DEP_CPP_REMVI) "$(INTDIR)"\
 "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvmon.cpp

"$(INTDIR)\remvmon.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvpend.cpp

"$(INTDIR)\remvpend.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvw.cpp

"$(INTDIR)\remvw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvweek.cpp

"$(INTDIR)\remvweek.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\REMVWNP.CPP

"$(INTDIR)\REMVWNP.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\ritem.cpp

"$(INTDIR)\ritem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\rmessage.cpp

"$(INTDIR)\rmessage.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\rstring.cpp

"$(INTDIR)\rstring.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\textline.cpp

"$(INTDIR)\textline.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datepas.cpp

"$(INTDIR)\datepas.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\holiday.cpp

"$(INTDIR)\holiday.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\lunar.cpp

"$(INTDIR)\lunar.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvwknp.cpp

"$(INTDIR)\remvwknp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvcal.cpp

"$(INTDIR)\remvcal.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvclnp.cpp

"$(INTDIR)\remvclnp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remverr.cpp

"$(INTDIR)\remverr.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\rstyle.cpp

"$(INTDIR)\rstyle.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\rcategry.cpp

"$(INTDIR)\rcategry.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\rerror.cpp

"$(INTDIR)\rerror.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remparse.cpp

"$(INTDIR)\remparse.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remappnp.cpp

"$(INTDIR)\remappnp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pleiades\zstylmgr.cpp

"$(INTDIR)\zstylmgr.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pleiades\zcatalog.cpp

"$(INTDIR)\zcatalog.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pleiades\zstyle.cpp

"$(INTDIR)\zstyle.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pleiades\zcatitem.cpp

"$(INTDIR)\zcatitem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pleiades\zcatgmgr.cpp

"$(INTDIR)\zcatgmgr.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=\peggy\pleiades\zcategry.cpp

"$(INTDIR)\zcategry.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Remind.pch"
   $(CPP) $(CPP_PROJ) $(SOURCE)


# End Source File
# End Target
# End Project
################################################################################
