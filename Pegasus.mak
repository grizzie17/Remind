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
!MESSAGE NMAKE /f "Pegasus.mak" CFG="Pegasus - Win32 Debug"
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

ALL : ".\Remindd.exe" "$(OUTDIR)\Pegasus.tlb" "$(OUTDIR)\Pegasus.bsc"

CLEAN : 
	-@erase "$(INTDIR)\cntritem.obj"
	-@erase "$(INTDIR)\cntritem.sbr"
	-@erase "$(INTDIR)\datedmy.obj"
	-@erase "$(INTDIR)\datedmy.sbr"
	-@erase "$(INTDIR)\dateinc.obj"
	-@erase "$(INTDIR)\dateinc.sbr"
	-@erase "$(INTDIR)\datejul.obj"
	-@erase "$(INTDIR)\datejul.sbr"
	-@erase "$(INTDIR)\datemmyy.obj"
	-@erase "$(INTDIR)\datemmyy.sbr"
	-@erase "$(INTDIR)\datemoon.obj"
	-@erase "$(INTDIR)\datemoon.sbr"
	-@erase "$(INTDIR)\dateownr.obj"
	-@erase "$(INTDIR)\dateownr.sbr"
	-@erase "$(INTDIR)\datepars.obj"
	-@erase "$(INTDIR)\datepars.sbr"
	-@erase "$(INTDIR)\datepas.obj"
	-@erase "$(INTDIR)\datepas.sbr"
	-@erase "$(INTDIR)\dateroot.obj"
	-@erase "$(INTDIR)\dateroot.sbr"
	-@erase "$(INTDIR)\datevalu.obj"
	-@erase "$(INTDIR)\datevalu.sbr"
	-@erase "$(INTDIR)\datewday.obj"
	-@erase "$(INTDIR)\datewday.sbr"
	-@erase "$(INTDIR)\datewmy.obj"
	-@erase "$(INTDIR)\datewmy.sbr"
	-@erase "$(INTDIR)\dkeyword.obj"
	-@erase "$(INTDIR)\dkeyword.sbr"
	-@erase "$(INTDIR)\holiday.obj"
	-@erase "$(INTDIR)\holiday.sbr"
	-@erase "$(INTDIR)\ipframe.obj"
	-@erase "$(INTDIR)\ipframe.sbr"
	-@erase "$(INTDIR)\julian.obj"
	-@erase "$(INTDIR)\julian.sbr"
	-@erase "$(INTDIR)\lunar.obj"
	-@erase "$(INTDIR)\lunar.sbr"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\mainfrm.sbr"
	-@erase "$(INTDIR)\mfcbase.obj"
	-@erase "$(INTDIR)\mfcbase.sbr"
	-@erase "$(INTDIR)\mfcfont.obj"
	-@erase "$(INTDIR)\mfcfont.sbr"
	-@erase "$(INTDIR)\nodeitem.obj"
	-@erase "$(INTDIR)\nodeitem.sbr"
	-@erase "$(INTDIR)\nodejday.obj"
	-@erase "$(INTDIR)\nodejday.sbr"
	-@erase "$(INTDIR)\nodelink.obj"
	-@erase "$(INTDIR)\nodelink.sbr"
	-@erase "$(INTDIR)\nodeweek.obj"
	-@erase "$(INTDIR)\nodeweek.sbr"
	-@erase "$(INTDIR)\pegasdoc.obj"
	-@erase "$(INTDIR)\pegasdoc.sbr"
	-@erase "$(INTDIR)\pegasus.obj"
	-@erase "$(INTDIR)\Pegasus.pch"
	-@erase "$(INTDIR)\Pegasus.res"
	-@erase "$(INTDIR)\pegasus.sbr"
	-@erase "$(INTDIR)\Pegasus.tlb"
	-@erase "$(INTDIR)\PEGASVW.OBJ"
	-@erase "$(INTDIR)\PEGASVW.SBR"
	-@erase "$(INTDIR)\peggyflo.obj"
	-@erase "$(INTDIR)\peggyflo.sbr"
	-@erase "$(INTDIR)\rcategry.obj"
	-@erase "$(INTDIR)\rcategry.sbr"
	-@erase "$(INTDIR)\remappl.obj"
	-@erase "$(INTDIR)\remappl.sbr"
	-@erase "$(INTDIR)\remappnp.obj"
	-@erase "$(INTDIR)\remappnp.sbr"
	-@erase "$(INTDIR)\remdoc.obj"
	-@erase "$(INTDIR)\remdoc.sbr"
	-@erase "$(INTDIR)\remdocnp.obj"
	-@erase "$(INTDIR)\remdocnp.sbr"
	-@erase "$(INTDIR)\remindde.obj"
	-@erase "$(INTDIR)\remindde.sbr"
	-@erase "$(INTDIR)\remparse.obj"
	-@erase "$(INTDIR)\remparse.sbr"
	-@erase "$(INTDIR)\remvcal.obj"
	-@erase "$(INTDIR)\remvcal.sbr"
	-@erase "$(INTDIR)\remvclnp.obj"
	-@erase "$(INTDIR)\remvclnp.sbr"
	-@erase "$(INTDIR)\remverr.obj"
	-@erase "$(INTDIR)\remverr.sbr"
	-@erase "$(INTDIR)\remview.obj"
	-@erase "$(INTDIR)\remview.sbr"
	-@erase "$(INTDIR)\remvmon.obj"
	-@erase "$(INTDIR)\remvmon.sbr"
	-@erase "$(INTDIR)\remvpend.obj"
	-@erase "$(INTDIR)\remvpend.sbr"
	-@erase "$(INTDIR)\remvw.obj"
	-@erase "$(INTDIR)\remvw.sbr"
	-@erase "$(INTDIR)\remvweek.obj"
	-@erase "$(INTDIR)\remvweek.sbr"
	-@erase "$(INTDIR)\remvwknp.obj"
	-@erase "$(INTDIR)\remvwknp.sbr"
	-@erase "$(INTDIR)\REMVWNP.OBJ"
	-@erase "$(INTDIR)\REMVWNP.SBR"
	-@erase "$(INTDIR)\rerror.obj"
	-@erase "$(INTDIR)\rerror.sbr"
	-@erase "$(INTDIR)\ritem.obj"
	-@erase "$(INTDIR)\ritem.sbr"
	-@erase "$(INTDIR)\rmessage.obj"
	-@erase "$(INTDIR)\rmessage.sbr"
	-@erase "$(INTDIR)\rstring.obj"
	-@erase "$(INTDIR)\rstring.sbr"
	-@erase "$(INTDIR)\rstyle.obj"
	-@erase "$(INTDIR)\rstyle.sbr"
	-@erase "$(INTDIR)\srvritem.obj"
	-@erase "$(INTDIR)\srvritem.sbr"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\stdafx.sbr"
	-@erase "$(INTDIR)\textline.obj"
	-@erase "$(INTDIR)\textline.sbr"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\xpappl.obj"
	-@erase "$(INTDIR)\xpappl.sbr"
	-@erase "$(INTDIR)\xpapplg.obj"
	-@erase "$(INTDIR)\xpapplg.sbr"
	-@erase "$(INTDIR)\xpcolor.obj"
	-@erase "$(INTDIR)\xpcolor.sbr"
	-@erase "$(INTDIR)\xpdoc.obj"
	-@erase "$(INTDIR)\xpdoc.sbr"
	-@erase "$(INTDIR)\xpdocg.obj"
	-@erase "$(INTDIR)\xpdocg.sbr"
	-@erase "$(INTDIR)\xpdraw.obj"
	-@erase "$(INTDIR)\xpdraw.sbr"
	-@erase "$(INTDIR)\xpfont.obj"
	-@erase "$(INTDIR)\xpfont.sbr"
	-@erase "$(INTDIR)\xprefcnt.obj"
	-@erase "$(INTDIR)\xprefcnt.sbr"
	-@erase "$(INTDIR)\xpstring.obj"
	-@erase "$(INTDIR)\xpstring.sbr"
	-@erase "$(INTDIR)\xpstystr.obj"
	-@erase "$(INTDIR)\xpstystr.sbr"
	-@erase "$(INTDIR)\xpsystem.obj"
	-@erase "$(INTDIR)\xpsystem.sbr"
	-@erase "$(INTDIR)\xptxtsrv.obj"
	-@erase "$(INTDIR)\xptxtsrv.sbr"
	-@erase "$(INTDIR)\xpview.obj"
	-@erase "$(INTDIR)\xpview.sbr"
	-@erase "$(INTDIR)\xpviewg.obj"
	-@erase "$(INTDIR)\xpviewg.sbr"
	-@erase "$(INTDIR)\zcatalog.obj"
	-@erase "$(INTDIR)\zcatalog.sbr"
	-@erase "$(INTDIR)\zcategry.obj"
	-@erase "$(INTDIR)\zcategry.sbr"
	-@erase "$(INTDIR)\zcatgmgr.obj"
	-@erase "$(INTDIR)\zcatgmgr.sbr"
	-@erase "$(INTDIR)\zcatitem.obj"
	-@erase "$(INTDIR)\zcatitem.sbr"
	-@erase "$(INTDIR)\zstyle.obj"
	-@erase "$(INTDIR)\zstyle.sbr"
	-@erase "$(INTDIR)\zstylmgr.obj"
	-@erase "$(INTDIR)\zstylmgr.sbr"
	-@erase "$(OUTDIR)\Pegasus.bsc"
	-@erase "$(OUTDIR)\Remindd.pdb"
	-@erase ".\Remindd.exe"
	-@erase ".\Remindd.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS" /FR /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\WinDebug/
CPP_SBRS=.\WinDebug/
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/Pegasus.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Pegasus.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\cntritem.sbr" \
	"$(INTDIR)\datedmy.sbr" \
	"$(INTDIR)\dateinc.sbr" \
	"$(INTDIR)\datejul.sbr" \
	"$(INTDIR)\datemmyy.sbr" \
	"$(INTDIR)\datemoon.sbr" \
	"$(INTDIR)\dateownr.sbr" \
	"$(INTDIR)\datepars.sbr" \
	"$(INTDIR)\datepas.sbr" \
	"$(INTDIR)\dateroot.sbr" \
	"$(INTDIR)\datevalu.sbr" \
	"$(INTDIR)\datewday.sbr" \
	"$(INTDIR)\datewmy.sbr" \
	"$(INTDIR)\dkeyword.sbr" \
	"$(INTDIR)\holiday.sbr" \
	"$(INTDIR)\ipframe.sbr" \
	"$(INTDIR)\julian.sbr" \
	"$(INTDIR)\lunar.sbr" \
	"$(INTDIR)\mainfrm.sbr" \
	"$(INTDIR)\mfcbase.sbr" \
	"$(INTDIR)\mfcfont.sbr" \
	"$(INTDIR)\nodeitem.sbr" \
	"$(INTDIR)\nodejday.sbr" \
	"$(INTDIR)\nodelink.sbr" \
	"$(INTDIR)\nodeweek.sbr" \
	"$(INTDIR)\pegasdoc.sbr" \
	"$(INTDIR)\pegasus.sbr" \
	"$(INTDIR)\PEGASVW.SBR" \
	"$(INTDIR)\peggyflo.sbr" \
	"$(INTDIR)\rcategry.sbr" \
	"$(INTDIR)\remappl.sbr" \
	"$(INTDIR)\remappnp.sbr" \
	"$(INTDIR)\remdoc.sbr" \
	"$(INTDIR)\remdocnp.sbr" \
	"$(INTDIR)\remindde.sbr" \
	"$(INTDIR)\remparse.sbr" \
	"$(INTDIR)\remvcal.sbr" \
	"$(INTDIR)\remvclnp.sbr" \
	"$(INTDIR)\remverr.sbr" \
	"$(INTDIR)\remview.sbr" \
	"$(INTDIR)\remvmon.sbr" \
	"$(INTDIR)\remvpend.sbr" \
	"$(INTDIR)\remvw.sbr" \
	"$(INTDIR)\remvweek.sbr" \
	"$(INTDIR)\remvwknp.sbr" \
	"$(INTDIR)\REMVWNP.SBR" \
	"$(INTDIR)\rerror.sbr" \
	"$(INTDIR)\ritem.sbr" \
	"$(INTDIR)\rmessage.sbr" \
	"$(INTDIR)\rstring.sbr" \
	"$(INTDIR)\rstyle.sbr" \
	"$(INTDIR)\srvritem.sbr" \
	"$(INTDIR)\stdafx.sbr" \
	"$(INTDIR)\textline.sbr" \
	"$(INTDIR)\xpappl.sbr" \
	"$(INTDIR)\xpapplg.sbr" \
	"$(INTDIR)\xpcolor.sbr" \
	"$(INTDIR)\xpdoc.sbr" \
	"$(INTDIR)\xpdocg.sbr" \
	"$(INTDIR)\xpdraw.sbr" \
	"$(INTDIR)\xpfont.sbr" \
	"$(INTDIR)\xprefcnt.sbr" \
	"$(INTDIR)\xpstring.sbr" \
	"$(INTDIR)\xpstystr.sbr" \
	"$(INTDIR)\xpsystem.sbr" \
	"$(INTDIR)\xptxtsrv.sbr" \
	"$(INTDIR)\xpview.sbr" \
	"$(INTDIR)\xpviewg.sbr" \
	"$(INTDIR)\zcatalog.sbr" \
	"$(INTDIR)\zcategry.sbr" \
	"$(INTDIR)\zcatgmgr.sbr" \
	"$(INTDIR)\zcatitem.sbr" \
	"$(INTDIR)\zstyle.sbr" \
	"$(INTDIR)\zstylmgr.sbr"

"$(OUTDIR)\Pegasus.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

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
	"$(INTDIR)\xpstystr.obj" \
	"$(INTDIR)\xpsystem.obj" \
	"$(INTDIR)\xptxtsrv.obj" \
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

ALL : ".\Remind.exe" "$(OUTDIR)\Pegasus.tlb" "$(OUTDIR)\Pegasus.bsc"

CLEAN : 
	-@erase "$(INTDIR)\cntritem.obj"
	-@erase "$(INTDIR)\cntritem.sbr"
	-@erase "$(INTDIR)\datedmy.obj"
	-@erase "$(INTDIR)\datedmy.sbr"
	-@erase "$(INTDIR)\dateinc.obj"
	-@erase "$(INTDIR)\dateinc.sbr"
	-@erase "$(INTDIR)\datejul.obj"
	-@erase "$(INTDIR)\datejul.sbr"
	-@erase "$(INTDIR)\datemmyy.obj"
	-@erase "$(INTDIR)\datemmyy.sbr"
	-@erase "$(INTDIR)\datemoon.obj"
	-@erase "$(INTDIR)\datemoon.sbr"
	-@erase "$(INTDIR)\dateownr.obj"
	-@erase "$(INTDIR)\dateownr.sbr"
	-@erase "$(INTDIR)\datepars.obj"
	-@erase "$(INTDIR)\datepars.sbr"
	-@erase "$(INTDIR)\datepas.obj"
	-@erase "$(INTDIR)\datepas.sbr"
	-@erase "$(INTDIR)\dateroot.obj"
	-@erase "$(INTDIR)\dateroot.sbr"
	-@erase "$(INTDIR)\datevalu.obj"
	-@erase "$(INTDIR)\datevalu.sbr"
	-@erase "$(INTDIR)\datewday.obj"
	-@erase "$(INTDIR)\datewday.sbr"
	-@erase "$(INTDIR)\datewmy.obj"
	-@erase "$(INTDIR)\datewmy.sbr"
	-@erase "$(INTDIR)\dkeyword.obj"
	-@erase "$(INTDIR)\dkeyword.sbr"
	-@erase "$(INTDIR)\holiday.obj"
	-@erase "$(INTDIR)\holiday.sbr"
	-@erase "$(INTDIR)\ipframe.obj"
	-@erase "$(INTDIR)\ipframe.sbr"
	-@erase "$(INTDIR)\julian.obj"
	-@erase "$(INTDIR)\julian.sbr"
	-@erase "$(INTDIR)\lunar.obj"
	-@erase "$(INTDIR)\lunar.sbr"
	-@erase "$(INTDIR)\mainfrm.obj"
	-@erase "$(INTDIR)\mainfrm.sbr"
	-@erase "$(INTDIR)\mfcbase.obj"
	-@erase "$(INTDIR)\mfcbase.sbr"
	-@erase "$(INTDIR)\mfcfont.obj"
	-@erase "$(INTDIR)\mfcfont.sbr"
	-@erase "$(INTDIR)\nodeitem.obj"
	-@erase "$(INTDIR)\nodeitem.sbr"
	-@erase "$(INTDIR)\nodejday.obj"
	-@erase "$(INTDIR)\nodejday.sbr"
	-@erase "$(INTDIR)\nodelink.obj"
	-@erase "$(INTDIR)\nodelink.sbr"
	-@erase "$(INTDIR)\nodeweek.obj"
	-@erase "$(INTDIR)\nodeweek.sbr"
	-@erase "$(INTDIR)\pegasdoc.obj"
	-@erase "$(INTDIR)\pegasdoc.sbr"
	-@erase "$(INTDIR)\pegasus.obj"
	-@erase "$(INTDIR)\Pegasus.pch"
	-@erase "$(INTDIR)\Pegasus.res"
	-@erase "$(INTDIR)\pegasus.sbr"
	-@erase "$(INTDIR)\Pegasus.tlb"
	-@erase "$(INTDIR)\PEGASVW.OBJ"
	-@erase "$(INTDIR)\PEGASVW.SBR"
	-@erase "$(INTDIR)\peggyflo.obj"
	-@erase "$(INTDIR)\peggyflo.sbr"
	-@erase "$(INTDIR)\rcategry.obj"
	-@erase "$(INTDIR)\rcategry.sbr"
	-@erase "$(INTDIR)\remappl.obj"
	-@erase "$(INTDIR)\remappl.sbr"
	-@erase "$(INTDIR)\remappnp.obj"
	-@erase "$(INTDIR)\remappnp.sbr"
	-@erase "$(INTDIR)\remdoc.obj"
	-@erase "$(INTDIR)\remdoc.sbr"
	-@erase "$(INTDIR)\remdocnp.obj"
	-@erase "$(INTDIR)\remdocnp.sbr"
	-@erase "$(INTDIR)\remindde.obj"
	-@erase "$(INTDIR)\remindde.sbr"
	-@erase "$(INTDIR)\remparse.obj"
	-@erase "$(INTDIR)\remparse.sbr"
	-@erase "$(INTDIR)\remvcal.obj"
	-@erase "$(INTDIR)\remvcal.sbr"
	-@erase "$(INTDIR)\remvclnp.obj"
	-@erase "$(INTDIR)\remvclnp.sbr"
	-@erase "$(INTDIR)\remverr.obj"
	-@erase "$(INTDIR)\remverr.sbr"
	-@erase "$(INTDIR)\remview.obj"
	-@erase "$(INTDIR)\remview.sbr"
	-@erase "$(INTDIR)\remvmon.obj"
	-@erase "$(INTDIR)\remvmon.sbr"
	-@erase "$(INTDIR)\remvpend.obj"
	-@erase "$(INTDIR)\remvpend.sbr"
	-@erase "$(INTDIR)\remvw.obj"
	-@erase "$(INTDIR)\remvw.sbr"
	-@erase "$(INTDIR)\remvweek.obj"
	-@erase "$(INTDIR)\remvweek.sbr"
	-@erase "$(INTDIR)\remvwknp.obj"
	-@erase "$(INTDIR)\remvwknp.sbr"
	-@erase "$(INTDIR)\REMVWNP.OBJ"
	-@erase "$(INTDIR)\REMVWNP.SBR"
	-@erase "$(INTDIR)\rerror.obj"
	-@erase "$(INTDIR)\rerror.sbr"
	-@erase "$(INTDIR)\ritem.obj"
	-@erase "$(INTDIR)\ritem.sbr"
	-@erase "$(INTDIR)\rmessage.obj"
	-@erase "$(INTDIR)\rmessage.sbr"
	-@erase "$(INTDIR)\rstring.obj"
	-@erase "$(INTDIR)\rstring.sbr"
	-@erase "$(INTDIR)\rstyle.obj"
	-@erase "$(INTDIR)\rstyle.sbr"
	-@erase "$(INTDIR)\srvritem.obj"
	-@erase "$(INTDIR)\srvritem.sbr"
	-@erase "$(INTDIR)\stdafx.obj"
	-@erase "$(INTDIR)\stdafx.sbr"
	-@erase "$(INTDIR)\textline.obj"
	-@erase "$(INTDIR)\textline.sbr"
	-@erase "$(INTDIR)\xpappl.obj"
	-@erase "$(INTDIR)\xpappl.sbr"
	-@erase "$(INTDIR)\xpapplg.obj"
	-@erase "$(INTDIR)\xpapplg.sbr"
	-@erase "$(INTDIR)\xpcolor.obj"
	-@erase "$(INTDIR)\xpcolor.sbr"
	-@erase "$(INTDIR)\xpdoc.obj"
	-@erase "$(INTDIR)\xpdoc.sbr"
	-@erase "$(INTDIR)\xpdocg.obj"
	-@erase "$(INTDIR)\xpdocg.sbr"
	-@erase "$(INTDIR)\xpdraw.obj"
	-@erase "$(INTDIR)\xpdraw.sbr"
	-@erase "$(INTDIR)\xpfont.obj"
	-@erase "$(INTDIR)\xpfont.sbr"
	-@erase "$(INTDIR)\xprefcnt.obj"
	-@erase "$(INTDIR)\xprefcnt.sbr"
	-@erase "$(INTDIR)\xpstring.obj"
	-@erase "$(INTDIR)\xpstring.sbr"
	-@erase "$(INTDIR)\xpstystr.obj"
	-@erase "$(INTDIR)\xpstystr.sbr"
	-@erase "$(INTDIR)\xpsystem.obj"
	-@erase "$(INTDIR)\xpsystem.sbr"
	-@erase "$(INTDIR)\xptxtsrv.obj"
	-@erase "$(INTDIR)\xptxtsrv.sbr"
	-@erase "$(INTDIR)\xpview.obj"
	-@erase "$(INTDIR)\xpview.sbr"
	-@erase "$(INTDIR)\xpviewg.obj"
	-@erase "$(INTDIR)\xpviewg.sbr"
	-@erase "$(INTDIR)\zcatalog.obj"
	-@erase "$(INTDIR)\zcatalog.sbr"
	-@erase "$(INTDIR)\zcategry.obj"
	-@erase "$(INTDIR)\zcategry.sbr"
	-@erase "$(INTDIR)\zcatgmgr.obj"
	-@erase "$(INTDIR)\zcatgmgr.sbr"
	-@erase "$(INTDIR)\zcatitem.obj"
	-@erase "$(INTDIR)\zcatitem.sbr"
	-@erase "$(INTDIR)\zstyle.obj"
	-@erase "$(INTDIR)\zstyle.sbr"
	-@erase "$(INTDIR)\zstylmgr.obj"
	-@erase "$(INTDIR)\zstylmgr.sbr"
	-@erase "$(OUTDIR)\Pegasus.bsc"
	-@erase ".\Remind.exe"
	-@erase ".\Remind.ilk"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS" /FR /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\WinRel/
CPP_SBRS=.\WinRel/
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x409 /fo"$(INTDIR)/Pegasus.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Pegasus.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\cntritem.sbr" \
	"$(INTDIR)\datedmy.sbr" \
	"$(INTDIR)\dateinc.sbr" \
	"$(INTDIR)\datejul.sbr" \
	"$(INTDIR)\datemmyy.sbr" \
	"$(INTDIR)\datemoon.sbr" \
	"$(INTDIR)\dateownr.sbr" \
	"$(INTDIR)\datepars.sbr" \
	"$(INTDIR)\datepas.sbr" \
	"$(INTDIR)\dateroot.sbr" \
	"$(INTDIR)\datevalu.sbr" \
	"$(INTDIR)\datewday.sbr" \
	"$(INTDIR)\datewmy.sbr" \
	"$(INTDIR)\dkeyword.sbr" \
	"$(INTDIR)\holiday.sbr" \
	"$(INTDIR)\ipframe.sbr" \
	"$(INTDIR)\julian.sbr" \
	"$(INTDIR)\lunar.sbr" \
	"$(INTDIR)\mainfrm.sbr" \
	"$(INTDIR)\mfcbase.sbr" \
	"$(INTDIR)\mfcfont.sbr" \
	"$(INTDIR)\nodeitem.sbr" \
	"$(INTDIR)\nodejday.sbr" \
	"$(INTDIR)\nodelink.sbr" \
	"$(INTDIR)\nodeweek.sbr" \
	"$(INTDIR)\pegasdoc.sbr" \
	"$(INTDIR)\pegasus.sbr" \
	"$(INTDIR)\PEGASVW.SBR" \
	"$(INTDIR)\peggyflo.sbr" \
	"$(INTDIR)\rcategry.sbr" \
	"$(INTDIR)\remappl.sbr" \
	"$(INTDIR)\remappnp.sbr" \
	"$(INTDIR)\remdoc.sbr" \
	"$(INTDIR)\remdocnp.sbr" \
	"$(INTDIR)\remindde.sbr" \
	"$(INTDIR)\remparse.sbr" \
	"$(INTDIR)\remvcal.sbr" \
	"$(INTDIR)\remvclnp.sbr" \
	"$(INTDIR)\remverr.sbr" \
	"$(INTDIR)\remview.sbr" \
	"$(INTDIR)\remvmon.sbr" \
	"$(INTDIR)\remvpend.sbr" \
	"$(INTDIR)\remvw.sbr" \
	"$(INTDIR)\remvweek.sbr" \
	"$(INTDIR)\remvwknp.sbr" \
	"$(INTDIR)\REMVWNP.SBR" \
	"$(INTDIR)\rerror.sbr" \
	"$(INTDIR)\ritem.sbr" \
	"$(INTDIR)\rmessage.sbr" \
	"$(INTDIR)\rstring.sbr" \
	"$(INTDIR)\rstyle.sbr" \
	"$(INTDIR)\srvritem.sbr" \
	"$(INTDIR)\stdafx.sbr" \
	"$(INTDIR)\textline.sbr" \
	"$(INTDIR)\xpappl.sbr" \
	"$(INTDIR)\xpapplg.sbr" \
	"$(INTDIR)\xpcolor.sbr" \
	"$(INTDIR)\xpdoc.sbr" \
	"$(INTDIR)\xpdocg.sbr" \
	"$(INTDIR)\xpdraw.sbr" \
	"$(INTDIR)\xpfont.sbr" \
	"$(INTDIR)\xprefcnt.sbr" \
	"$(INTDIR)\xpstring.sbr" \
	"$(INTDIR)\xpstystr.sbr" \
	"$(INTDIR)\xpsystem.sbr" \
	"$(INTDIR)\xptxtsrv.sbr" \
	"$(INTDIR)\xpview.sbr" \
	"$(INTDIR)\xpviewg.sbr" \
	"$(INTDIR)\zcatalog.sbr" \
	"$(INTDIR)\zcategry.sbr" \
	"$(INTDIR)\zcatgmgr.sbr" \
	"$(INTDIR)\zcatitem.sbr" \
	"$(INTDIR)\zstyle.sbr" \
	"$(INTDIR)\zstylmgr.sbr"

"$(OUTDIR)\Pegasus.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

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
	"$(INTDIR)\xpstystr.obj" \
	"$(INTDIR)\xpsystem.obj" \
	"$(INTDIR)\xptxtsrv.obj" \
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
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\PEGASVW.OBJ" : $(SOURCE) $(DEP_CPP_PEGAS) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\PEGASVW.SBR" : $(SOURCE) $(DEP_CPP_PEGAS) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\mainfrm.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# ADD CPP /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\mainfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\mainfrm.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\mainfrm.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\mainfrm.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\peggyflo.cpp
DEP_CPP_PEGGY=\
	".\REM\mfc\pegasus.h"\
	".\REM\mfc\peggyflo.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\peggyflo.obj" : $(SOURCE) $(DEP_CPP_PEGGY) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\peggyflo.sbr" : $(SOURCE) $(DEP_CPP_PEGGY) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

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
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\srvritem.obj" : $(SOURCE) $(DEP_CPP_SRVRI) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\srvritem.sbr" : $(SOURCE) $(DEP_CPP_SRVRI) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\stdafx.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\stdafx.obj" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\stdafx.sbr" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\Pegasus.pch" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\stdafx.obj" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\stdafx.sbr" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\Pegasus.pch" : $(SOURCE) "$(INTDIR)"
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
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\cntritem.obj" : $(SOURCE) $(DEP_CPP_CNTRI) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\cntritem.sbr" : $(SOURCE) $(DEP_CPP_CNTRI) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

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
	".\REM\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\pegasus.obj" : $(SOURCE) $(DEP_CPP_PEGASUS) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\pegasus.sbr" : $(SOURCE) $(DEP_CPP_PEGASUS) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\ipframe.cpp
DEP_CPP_IPFRA=\
	".\REM\mfc\ipframe.h"\
	".\REM\mfc\pegasus.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\ipframe.obj" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\ipframe.sbr" : $(SOURCE) $(DEP_CPP_IPFRA) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\mfc\remindde.cpp
DEP_CPP_REMIN=\
	".\REM\mfc\pegasus.h"\
	".\REM\mfc\remindde.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remindde.obj" : $(SOURCE) $(DEP_CPP_REMIN) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remindde.sbr" : $(SOURCE) $(DEP_CPP_REMIN) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

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
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\pegasdoc.obj" : $(SOURCE) $(DEP_CPP_PEGASD) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\pegasdoc.sbr" : $(SOURCE) $(DEP_CPP_PEGASD) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpsystem.cpp
DEP_CPP_XPSYS=\
	"..\LIBRARY\SRC\bearstr.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\fileerr.h"\
	"..\LIBRARY\SRC\filesmsg.h"\
	"..\LIBRARY\SRC\filespec.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpcolor.h"\
	"..\PEGASUS\xpsystem.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpsystem.obj" : $(SOURCE) $(DEP_CPP_XPSYS) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpsystem.sbr" : $(SOURCE) $(DEP_CPP_XPSYS) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpviewg.cpp
DEP_CPP_XPVIE=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\fileerr.h"\
	"..\LIBRARY\SRC\filesmsg.h"\
	"..\LIBRARY\SRC\filespec.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\MFC\mfcfont.h"\
	"..\PEGASUS\utypes.h"\
	"..\PEGASUS\xpcolor.h"\
	"..\PEGASUS\xpdoc.h"\
	"..\PEGASUS\xpdocb.h"\
	"..\PEGASUS\xpdocg.h"\
	"..\PEGASUS\xpdraw.h"\
	"..\PEGASUS\xpdrawb.h"\
	"..\PEGASUS\xpdyn.h"\
	"..\PEGASUS\xpfont.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PEGASUS\xpviewg.h"\
	".\REM\mfc\pegasdoc.h"\
	".\REM\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpviewg.obj" : $(SOURCE) $(DEP_CPP_XPVIE) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpviewg.sbr" : $(SOURCE) $(DEP_CPP_XPVIE) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpdraw.cpp
DEP_CPP_XPDRA=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\bearstr.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\fileerr.h"\
	"..\LIBRARY\SRC\filesmsg.h"\
	"..\LIBRARY\SRC\filespec.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\MFC\mfcfont.h"\
	"..\PEGASUS\utypes.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xpcolor.h"\
	"..\PEGASUS\xpdoc.h"\
	"..\PEGASUS\xpdocb.h"\
	"..\PEGASUS\xpdocg.h"\
	"..\PEGASUS\xpdraw.h"\
	"..\PEGASUS\xpdrawb.h"\
	"..\PEGASUS\xpdyn.h"\
	"..\PEGASUS\xpfont.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PEGASUS\xpviewg.h"\
	"..\PEGASUS\xpviewt.cpp"\
	"..\PEGASUS\xpviewt.h"\
	".\REM\mfc\pegasdoc.h"\
	".\REM\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpdraw.obj" : $(SOURCE) $(DEP_CPP_XPDRA) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpdraw.sbr" : $(SOURCE) $(DEP_CPP_XPDRA) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpapplg.cpp
DEP_CPP_XPAPP=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\fileerr.h"\
	"..\LIBRARY\SRC\filesmsg.h"\
	"..\LIBRARY\SRC\filespec.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpapplg.h"\
	"..\PEGASUS\xpstring.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpapplg.obj" : $(SOURCE) $(DEP_CPP_XPAPP) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpapplg.sbr" : $(SOURCE) $(DEP_CPP_XPAPP) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpview.cpp
DEP_CPP_XPVIEW=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\bearstr.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\fileerr.h"\
	"..\LIBRARY\SRC\filesmsg.h"\
	"..\LIBRARY\SRC\filespec.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\MFC\mfcfont.h"\
	"..\PEGASUS\utypes.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xpcolor.h"\
	"..\PEGASUS\xpdoc.h"\
	"..\PEGASUS\xpdocb.h"\
	"..\PEGASUS\xpdocg.h"\
	"..\PEGASUS\xpdraw.h"\
	"..\PEGASUS\xpdrawb.h"\
	"..\PEGASUS\xpdyn.h"\
	"..\PEGASUS\xpfont.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PEGASUS\xpview.h"\
	"..\PEGASUS\xpviewb.h"\
	"..\PEGASUS\xpviewg.h"\
	"..\PEGASUS\xpviewt.cpp"\
	"..\PEGASUS\xpviewt.h"\
	".\REM\mfc\pegasdoc.h"\
	".\REM\mfc\PEGASVW.H"\
	".\REM\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpview.obj" : $(SOURCE) $(DEP_CPP_XPVIEW) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpview.sbr" : $(SOURCE) $(DEP_CPP_XPVIEW) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpdoc.cpp
DEP_CPP_XPDOC=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\bearstr.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\fileerr.h"\
	"..\LIBRARY\SRC\filesmsg.h"\
	"..\LIBRARY\SRC\filespec.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\MFC\mfcfont.h"\
	"..\PEGASUS\utypes.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xpcolor.h"\
	"..\PEGASUS\xpdoc.h"\
	"..\PEGASUS\xpdocb.h"\
	"..\PEGASUS\xpdocg.h"\
	"..\PEGASUS\xpdraw.h"\
	"..\PEGASUS\xpdrawb.h"\
	"..\PEGASUS\xpdyn.h"\
	"..\PEGASUS\xpfont.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PEGASUS\xpview.h"\
	"..\PEGASUS\xpviewb.h"\
	"..\PEGASUS\xpviewg.h"\
	"..\PEGASUS\xpviewt.cpp"\
	"..\PEGASUS\xpviewt.h"\
	".\REM\mfc\pegasdoc.h"\
	".\REM\mfc\PEGASVW.H"\
	".\REM\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpdoc.obj" : $(SOURCE) $(DEP_CPP_XPDOC) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpdoc.sbr" : $(SOURCE) $(DEP_CPP_XPDOC) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpdocg.cpp
DEP_CPP_XPDOCG=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\fileerr.h"\
	"..\LIBRARY\SRC\filesmsg.h"\
	"..\LIBRARY\SRC\filespec.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\utypes.h"\
	"..\PEGASUS\xpdocg.h"\
	"..\PEGASUS\xpstring.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpdocg.obj" : $(SOURCE) $(DEP_CPP_XPDOCG) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpdocg.sbr" : $(SOURCE) $(DEP_CPP_XPDOCG) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpfont.cpp
DEP_CPP_XPFON=\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\bearstr.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\mem.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\MFC\mfcfont.h"\
	"..\PEGASUS\utypes.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xpcolor.h"\
	"..\PEGASUS\xpdraw.h"\
	"..\PEGASUS\xpdrawb.h"\
	"..\PEGASUS\xpfont.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpviewg.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpfont.obj" : $(SOURCE) $(DEP_CPP_XPFON) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpfont.sbr" : $(SOURCE) $(DEP_CPP_XPFON) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpstring.cpp
DEP_CPP_XPSTR=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpstring.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpstring.obj" : $(SOURCE) $(DEP_CPP_XPSTR) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpstring.sbr" : $(SOURCE) $(DEP_CPP_XPSTR) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpcolor.cpp
DEP_CPP_XPCOL=\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpcolor.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpcolor.obj" : $(SOURCE) $(DEP_CPP_XPCOL) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpcolor.sbr" : $(SOURCE) $(DEP_CPP_XPCOL) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xpappl.cpp
DEP_CPP_XPAPPL=\
	"..\LIBRARY\SRC\about.h"\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\bearstr.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\fileerr.h"\
	"..\LIBRARY\SRC\filesmsg.h"\
	"..\LIBRARY\SRC\filespec.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\MFC\mfcbase.h"\
	"..\PEGASUS\MFC\mfcfont.h"\
	"..\PEGASUS\utypes.h"\
	"..\PEGASUS\xpappl.h"\
	"..\PEGASUS\xpapplb.h"\
	"..\PEGASUS\xpapplg.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xpcolor.h"\
	"..\PEGASUS\xpdoc.h"\
	"..\PEGASUS\xpdocb.h"\
	"..\PEGASUS\xpdocg.h"\
	"..\PEGASUS\xpdraw.h"\
	"..\PEGASUS\xpdrawb.h"\
	"..\PEGASUS\xpdyn.h"\
	"..\PEGASUS\xpfont.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PEGASUS\xpsystem.h"\
	"..\PEGASUS\xpview.h"\
	"..\PEGASUS\xpviewb.h"\
	"..\PEGASUS\xpviewg.h"\
	"..\PEGASUS\xpviewt.cpp"\
	"..\PEGASUS\xpviewt.h"\
	".\REM\mfc\pegasdoc.h"\
	".\REM\mfc\pegasus.h"\
	".\REM\mfc\PEGASVW.H"\
	".\REM\mfc\stdafx.h"\
	".\rem\xpproj.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpappl.obj" : $(SOURCE) $(DEP_CPP_XPAPPL) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpappl.sbr" : $(SOURCE) $(DEP_CPP_XPAPPL) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\MFC\mfcfont.cpp
DEP_CPP_MFCFO=\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\MFC\mfcfont.h"\
	"..\PEGASUS\xprefcnt.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\mfcfont.obj" : $(SOURCE) $(DEP_CPP_MFCFO) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\mfcfont.sbr" : $(SOURCE) $(DEP_CPP_MFCFO) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\xprefcnt.cpp
DEP_CPP_XPREF=\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xprefcnt.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xprefcnt.obj" : $(SOURCE) $(DEP_CPP_XPREF) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xprefcnt.sbr" : $(SOURCE) $(DEP_CPP_XPREF) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PEGASUS\MFC\mfcbase.cpp
DEP_CPP_MFCBA=\
	"..\PEGASUS\MFC\mfcbase.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\mfcbase.obj" : $(SOURCE) $(DEP_CPP_MFCBA) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\mfcbase.sbr" : $(SOURCE) $(DEP_CPP_MFCBA) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

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

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\datedmy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datedmy.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\datedmy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datedmy.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\dateinc.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\dateinc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\dateinc.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\dateinc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\dateinc.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datejul.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\datejul.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datejul.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\datejul.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datejul.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datemmyy.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\datemmyy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datemmyy.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\datemmyy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datemmyy.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datemoon.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\datemoon.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datemoon.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\datemoon.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datemoon.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\dateownr.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\dateownr.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\dateownr.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\dateownr.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\dateownr.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datepars.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\datepars.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datepars.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\datepars.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datepars.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\dateroot.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\dateroot.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\dateroot.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\dateroot.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\dateroot.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datevalu.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\datevalu.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datevalu.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\datevalu.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datevalu.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datewday.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\datewday.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datewday.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\datewday.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datewday.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datewmy.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\datewmy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datewmy.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\datewmy.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datewmy.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\dkeyword.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\dkeyword.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\dkeyword.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\dkeyword.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\dkeyword.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\julian.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\julian.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\julian.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\julian.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\julian.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\nodeitem.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\nodeitem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\nodeitem.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\nodeitem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\nodeitem.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\nodejday.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\nodejday.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\nodejday.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\nodejday.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\nodejday.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\nodelink.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\nodelink.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\nodelink.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\nodelink.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\nodelink.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\nodeweek.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\nodeweek.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\nodeweek.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\nodeweek.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\nodeweek.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remappl.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remappl.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remappl.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remdoc.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remdoc.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remdoc.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remdocnp.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remdocnp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remdocnp.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remview.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remview.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remview.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvmon.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remvmon.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remvmon.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvpend.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remvpend.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remvpend.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvw.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remvw.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remvw.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvweek.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remvweek.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remvweek.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\REMVWNP.CPP

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\REMVWNP.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\REMVWNP.SBR" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\ritem.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\ritem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\ritem.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\ritem.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\ritem.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\rmessage.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\rmessage.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\rmessage.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\rmessage.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\rmessage.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\rstring.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\rstring.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\rstring.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\rstring.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\rstring.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\textline.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\textline.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\textline.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\textline.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\textline.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\datepas.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\datepas.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datepas.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\datepas.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\datepas.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\holiday.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\holiday.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\holiday.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\holiday.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\holiday.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\lunar.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\lunar.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\lunar.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\lunar.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\lunar.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvwknp.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remvwknp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remvwknp.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvcal.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remvcal.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remvcal.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remvclnp.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remvclnp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remvclnp.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remverr.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remverr.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remverr.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\rstyle.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\rstyle.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\rstyle.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\rstyle.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\rstyle.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\rcategry.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\rcategry.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\rcategry.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\rcategry.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\rcategry.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\rerror.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\rerror.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\rerror.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remparse.cpp

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\remparse.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remparse.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\remparse.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remparse.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\REM\remappnp.cpp

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\remappnp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\remappnp.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PLEIADES\zstylmgr.cpp
DEP_CPP_ZSTYL=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\mem.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PLEIADES\zarray.h"\
	"..\PLEIADES\zcatalog.h"\
	"..\PLEIADES\zcatitem.h"\
	"..\PLEIADES\zstyle.h"\
	"..\PLEIADES\zstylmgr.h"\
	".\REM\mfc\stdafx.h"\
	

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\zstylmgr.obj" : $(SOURCE) $(DEP_CPP_ZSTYL) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zstylmgr.sbr" : $(SOURCE) $(DEP_CPP_ZSTYL) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\zstylmgr.obj" : $(SOURCE) $(DEP_CPP_ZSTYL) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zstylmgr.sbr" : $(SOURCE) $(DEP_CPP_ZSTYL) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PLEIADES\zcatalog.cpp
DEP_CPP_ZCATA=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\mem.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PLEIADES\zarray.h"\
	"..\PLEIADES\zcatalog.h"\
	"..\PLEIADES\zcatitem.h"\
	".\REM\mfc\stdafx.h"\
	

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\zcatalog.obj" : $(SOURCE) $(DEP_CPP_ZCATA) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zcatalog.sbr" : $(SOURCE) $(DEP_CPP_ZCATA) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\zcatalog.obj" : $(SOURCE) $(DEP_CPP_ZCATA) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zcatalog.sbr" : $(SOURCE) $(DEP_CPP_ZCATA) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PLEIADES\zstyle.cpp
DEP_CPP_ZSTYLE=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\mem.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PLEIADES\zarray.h"\
	"..\PLEIADES\zcatalog.h"\
	"..\PLEIADES\zcatitem.h"\
	"..\PLEIADES\zstyle.h"\
	"..\PLEIADES\zstylmgr.h"\
	".\REM\mfc\stdafx.h"\
	

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\zstyle.obj" : $(SOURCE) $(DEP_CPP_ZSTYLE) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zstyle.sbr" : $(SOURCE) $(DEP_CPP_ZSTYLE) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\zstyle.obj" : $(SOURCE) $(DEP_CPP_ZSTYLE) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zstyle.sbr" : $(SOURCE) $(DEP_CPP_ZSTYLE) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PLEIADES\xpstystr.cpp
DEP_CPP_XPSTY=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\mem.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\MFC\mfcfont.h"\
	"..\PEGASUS\utypes.h"\
	"..\PEGASUS\xpcolor.h"\
	"..\PEGASUS\xpfont.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PLEIADES\txstyrun.h"\
	"..\PLEIADES\xpstystr.h"\
	"..\PLEIADES\zarray.h"\
	"..\PLEIADES\zcatitem.h"\
	"..\PLEIADES\zstyle.h"\
	".\REM\mfc\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xpstystr.obj" : $(SOURCE) $(DEP_CPP_XPSTY) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xpstystr.sbr" : $(SOURCE) $(DEP_CPP_XPSTY) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PLEIADES\zcatitem.cpp
DEP_CPP_ZCATI=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\mem.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PLEIADES\zarray.h"\
	"..\PLEIADES\zcatalog.h"\
	"..\PLEIADES\zcatitem.h"\
	".\REM\mfc\stdafx.h"\
	

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\zcatitem.obj" : $(SOURCE) $(DEP_CPP_ZCATI) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zcatitem.sbr" : $(SOURCE) $(DEP_CPP_ZCATI) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\zcatitem.obj" : $(SOURCE) $(DEP_CPP_ZCATI) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zcatitem.sbr" : $(SOURCE) $(DEP_CPP_ZCATI) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PLEIADES\xptxtsrv.cpp
DEP_CPP_XPTXT=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\mem.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\MFC\mfcfont.h"\
	"..\PEGASUS\utypes.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xpcolor.h"\
	"..\PEGASUS\xpdraw.h"\
	"..\PEGASUS\xpdrawb.h"\
	"..\PEGASUS\xpfont.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PEGASUS\xpviewg.h"\
	"..\PLEIADES\txstyrun.h"\
	"..\PLEIADES\xpstystr.h"\
	"..\PLEIADES\xptxtsrv.h"\
	"..\PLEIADES\zarray.h"\
	"..\PLEIADES\zcatitem.h"\
	"..\PLEIADES\zstyle.h"\
	".\REM\mfc\stdafx.h"\
	".\REM\rstyle.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\xptxtsrv.obj" : $(SOURCE) $(DEP_CPP_XPTXT) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\xptxtsrv.sbr" : $(SOURCE) $(DEP_CPP_XPTXT) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

# End Source File
################################################################################
# Begin Source File

SOURCE=\PLEIADES\zcatgmgr.cpp
DEP_CPP_ZCATG=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\mem.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PLEIADES\zarray.h"\
	"..\PLEIADES\zcatalog.h"\
	"..\PLEIADES\zcategry.h"\
	"..\PLEIADES\zcatgmgr.h"\
	"..\PLEIADES\zcatitem.h"\
	".\REM\mfc\stdafx.h"\
	

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\zcatgmgr.obj" : $(SOURCE) $(DEP_CPP_ZCATG) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zcatgmgr.sbr" : $(SOURCE) $(DEP_CPP_ZCATG) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\zcatgmgr.obj" : $(SOURCE) $(DEP_CPP_ZCATG) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zcatgmgr.sbr" : $(SOURCE) $(DEP_CPP_ZCATG) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\PLEIADES\zcategry.cpp
DEP_CPP_ZCATE=\
	"..\LIBRARY\SRC\bcmem.h"\
	"..\LIBRARY\SRC\bcmemptr.h"\
	"..\LIBRARY\SRC\bcstring.h"\
	"..\LIBRARY\SRC\beardefs.h"\
	"..\LIBRARY\SRC\beartype.h"\
	"..\LIBRARY\SRC\externc.h"\
	"..\LIBRARY\SRC\inclnest.h"\
	"..\LIBRARY\SRC\inclunst.h"\
	"..\LIBRARY\SRC\machine.h"\
	"..\LIBRARY\SRC\mem.h"\
	"..\LIBRARY\SRC\severity.h"\
	"..\PEGASUS\framwork.h"\
	"..\PEGASUS\xpassert.h"\
	"..\PEGASUS\xprefcnt.h"\
	"..\PEGASUS\xpstring.h"\
	"..\PLEIADES\zarray.h"\
	"..\PLEIADES\zcatalog.h"\
	"..\PLEIADES\zcategry.h"\
	"..\PLEIADES\zcatgmgr.h"\
	"..\PLEIADES\zcatitem.h"\
	".\REM\mfc\stdafx.h"\
	

!IF  "$(CFG)" == "Pegasus - Win32 Debug"

# SUBTRACT CPP /YX /Yc /Yu

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "u:\remind\rem\mfc" /I\
 "u:\remind\rem" /I "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I\
 "u:\library\src" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL"\
 /D "_MBCS" /FR"$(INTDIR)/" /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\zcategry.obj" : $(SOURCE) $(DEP_CPP_ZCATE) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zcategry.sbr" : $(SOURCE) $(DEP_CPP_ZCATE) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Pegasus - Win32 Release"


BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "u:\remind\rem\mfc" /I "u:\remind\rem" /I\
 "u:\pegasus\mfc" /I "u:\pegasus" /I "u:\pleiades" /I "u:\library\src" /D\
 "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_X86_" /D "_AFXDLL" /D "_MBCS"\
 /FR"$(INTDIR)/" /Fp"$(INTDIR)/Pegasus.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\zcategry.obj" : $(SOURCE) $(DEP_CPP_ZCATE) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

"$(INTDIR)\zcategry.sbr" : $(SOURCE) $(DEP_CPP_ZCATE) "$(INTDIR)"\
 "$(INTDIR)\Pegasus.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
