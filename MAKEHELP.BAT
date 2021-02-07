@echo off
REM -- First make map file from Microsoft Visual C++ generated resource.h
echo // MAKEHELP.BAT generated Help Map file.  Used by PEGASUS.HPJ. >hlp\Pegasus.hm
echo. >>hlp\Pegasus.hm
echo // Commands (ID_* and IDM_*) >>hlp\Pegasus.hm
makehm ID_,HID_,0x10000 IDM_,HIDM_,0x10000 resource.h >>hlp\Pegasus.hm
echo. >>hlp\Pegasus.hm
echo // Prompts (IDP_*) >>hlp\Pegasus.hm
makehm IDP_,HIDP_,0x30000 resource.h >>hlp\Pegasus.hm
echo. >>hlp\Pegasus.hm
echo // Resources (IDR_*) >>hlp\Pegasus.hm
makehm IDR_,HIDR_,0x20000 resource.h >>hlp\Pegasus.hm
echo. >>hlp\Pegasus.hm
echo // Dialogs (IDD_*) >>hlp\Pegasus.hm
makehm IDD_,HIDD_,0x20000 resource.h >>hlp\Pegasus.hm
echo. >>hlp\Pegasus.hm
echo // Frame Controls (IDW_*) >>hlp\Pegasus.hm
makehm IDW_,HIDW_,0x50000 resource.h >>hlp\Pegasus.hm
REM -- Make help for Project PEGASUS

echo Building Win32 Help files
call hc31 Pegasus.hpj
if exist windebug copy Pegasus.hlp windebug
if exist winrel copy Pegasus.hlp winrel
EndLocal
