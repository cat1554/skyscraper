; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Skyscraper"
!define PRODUCT_VERSION "2.0 Alpha 1"
!define PRODUCT_PUBLISHER "TLI Networks"
!define PRODUCT_WEB_SITE "http://www.skyscrapersim.com"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\Skyscraper.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define PRODUCT_STARTMENU_REGVAL "NSIS:StartMenuDir"

; Location where Skyscraper files are stored
;example: !define LOCAL_FILES "${LOCAL_FILES}"
!define LOCAL_FILES "H:\Skyscraper\dev\skyscraper-1.1"
!define WINDOWS_DIR "C:\WINDOWS"
!define SYSTEM_DIR "C:\WINDOWS\System32"

SetCompressor lzma
VIAddVersionKey ProductName "Skyscraper"
VIAddVersionKey FileDescription "Skyscraper"
VIAddVersionKey CompanyName "TLI Networks"
VIAddVersionKey LegalCopyright "�2003-2009 Ryan Thoryk"
VIAddVersionKey FileVersion "1.1.0.0"
VIAddVersionKey ProductVersion "1.1.0.0"
VIProductVersion 1.1.0.0

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${LOCAL_FILES}\skyscraper.ico"
!define MUI_UNICON "${LOCAL_FILES}\skyscraper.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "${LOCAL_FILES}\gpl.txt"
; Components page
!insertmacro MUI_PAGE_COMPONENTS
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Start menu page
var ICONS_GROUP
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "Skyscraper"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${PRODUCT_STARTMENU_REGVAL}"
!insertmacro MUI_PAGE_STARTMENU Application $ICONS_GROUP
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\Skyscraper.exe"
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\README"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "skyscraper20alpha1.exe"
InstallDir "$PROGRAMFILES\Skyscraper"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "Application" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  File "${LOCAL_FILES}\Skyscraper.exe"
  CreateDirectory "$SMPROGRAMS\$ICONS_GROUP"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Skyscraper.lnk" "$INSTDIR\Skyscraper.exe"
  CreateShortCut "$DESKTOP\Skyscraper.lnk" "$INSTDIR\Skyscraper.exe"
  File "${LOCAL_FILES}\readme.rtf"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Release Notes.lnk" "$INSTDIR\readme.rtf"
  File "${LOCAL_FILES}\designguide.html"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Building Design Guide.lnk" "$INSTDIR\designguide.html"
  File "${LOCAL_FILES}\changelog.txt"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Changelog.lnk" "$INSTDIR\changelog.txt"
  SetOutPath "$INSTDIR\buildings"
  File "${LOCAL_FILES}\buildings\Triton Center.bld"
  File "${LOCAL_FILES}\buildings\Glass Tower.bld"
  File "${LOCAL_FILES}\buildings\Sears Tower.bld"
  File "${LOCAL_FILES}\buildings\Simple.bld"
  SetOutPath "$INSTDIR\data"
  File "${LOCAL_FILES}\data\back.jpg"
  File "${LOCAL_FILES}\data\wooddoor1.jpg"
  File "${LOCAL_FILES}\data\windows11c.jpg"
  File "${LOCAL_FILES}\data\windows11.jpg"
  File "${LOCAL_FILES}\data\windows08.jpg"
  File "${LOCAL_FILES}\data\walkway.jpg"
  File "${LOCAL_FILES}\data\top.jpg"
  File "${LOCAL_FILES}\data\Textur15.jpg"
  File "${LOCAL_FILES}\data\Text16.jpg"
  File "${LOCAL_FILES}\data\Text13.jpg"
  File "${LOCAL_FILES}\data\Text12.jpg"
  File "${LOCAL_FILES}\data\Symb5.jpg"
  File "${LOCAL_FILES}\data\suburbs.jpg"
  File "${LOCAL_FILES}\data\street3.jpg"
  File "${LOCAL_FILES}\data\sp2.bmp"
  File "${LOCAL_FILES}\data\sp1.bmp"
  File "${LOCAL_FILES}\data\skyscraper.jpg"
  File "${LOCAL_FILES}\data\sidewalkcorner5.jpg"
  File "${LOCAL_FILES}\data\sidewalkcorner4.jpg"
  File "${LOCAL_FILES}\data\sidewalkcorner3.jpg"
  File "${LOCAL_FILES}\data\sidewalkcorner2.jpg"
  File "${LOCAL_FILES}\data\sidewalkcorner1.jpg"
  File "${LOCAL_FILES}\data\sidewalk1r.jpg"
  File "${LOCAL_FILES}\data\sidewalk1.jpg"
  File "${LOCAL_FILES}\data\servicedoor2.jpg"
  File "${LOCAL_FILES}\data\roadfullr.jpg"
  File "${LOCAL_FILES}\data\roadfull.jpg"
  File "${LOCAL_FILES}\data\right.jpg"
  File "${LOCAL_FILES}\data\qt2.bmp"
  File "${LOCAL_FILES}\data\qt1.bmp"
  File "${LOCAL_FILES}\data\pointer.bmp"
  File "${LOCAL_FILES}\data\plaque.jpg"
  File "${LOCAL_FILES}\data\op2.bmp"
  File "${LOCAL_FILES}\data\op1.bmp"
  File "${LOCAL_FILES}\data\mp2.bmp"
  File "${LOCAL_FILES}\data\mp1.bmp"
  File "${LOCAL_FILES}\data\miscdoor8.jpg"
  File "${LOCAL_FILES}\data\Mason01.jpg"
  File "${LOCAL_FILES}\data\Marbl3.jpg"
  File "${LOCAL_FILES}\data\marb148.jpg"
  File "${LOCAL_FILES}\data\marb123.jpg"
  File "${LOCAL_FILES}\data\marb047.jpg"
  File "${LOCAL_FILES}\data\lobbyfront.jpg"
  File "${LOCAL_FILES}\data\left.jpg"
;  File "${LOCAL_FILES}\data\intro.mp3"
  File "${LOCAL_FILES}\data\grndroad1right.jpg"
  File "${LOCAL_FILES}\data\grndroad1mid3.jpg"
  File "${LOCAL_FILES}\data\grndroad1mid2.jpg"
  File "${LOCAL_FILES}\data\grndroad1mid.jpg"
  File "${LOCAL_FILES}\data\grndroad1left.jpg"
  File "${LOCAL_FILES}\data\grndroad1knoll1tga.jpg"
  File "${LOCAL_FILES}\data\grndroad1corner3.jpg"
  File "${LOCAL_FILES}\data\grndroad1corner2.jpg"
  File "${LOCAL_FILES}\data\grndroad1corner.jpg"
  File "${LOCAL_FILES}\data\Granite.jpg"
  File "${LOCAL_FILES}\data\front.jpg"
  File "${LOCAL_FILES}\data\floorsignskylobby.jpg"
  File "${LOCAL_FILES}\data\floorsignroof.jpg"
  File "${LOCAL_FILES}\data\floorsignresidential.jpg"
  File "${LOCAL_FILES}\data\floorsignpool.jpg"
  File "${LOCAL_FILES}\data\floorsignoffices.jpg"
  File "${LOCAL_FILES}\data\floorsignobservatory.jpg"
  File "${LOCAL_FILES}\data\floorsignmez.jpg"
  File "${LOCAL_FILES}\data\floorsignmechanical.jpg"
  File "${LOCAL_FILES}\data\floorsignmaint.jpg"
  File "${LOCAL_FILES}\data\floorsignlobby.jpg"
  File "${LOCAL_FILES}\data\floorsignhotel.jpg"
  File "${LOCAL_FILES}\data\floorsignballroom.jpg"
  File "${LOCAL_FILES}\data\floorsignbalcony.jpg"
  File "${LOCAL_FILES}\data\floorsign.jpg"
;  File "${LOCAL_FILES}\data\elevstop.wav"
;  File "${LOCAL_FILES}\data\elevstart.wav"
;  File "${LOCAL_FILES}\data\elevmove.wav"
;  File "${LOCAL_FILES}\data\elevatoropen.wav"
;  File "${LOCAL_FILES}\data\elevatorclose.wav"
  File "${LOCAL_FILES}\data\elev1.jpg"
  File "${LOCAL_FILES}\data\downtown.jpg"
;  File "${LOCAL_FILES}\data\ding1.wav"
  File "${LOCAL_FILES}\data\Cutston.jpg"
  File "${LOCAL_FILES}\data\common.shader"
  File "${LOCAL_FILES}\data\button1.jpg"
  File "${LOCAL_FILES}\data\Brick1.jpg"
  File "${LOCAL_FILES}\data\bottom.jpg"
  File "${LOCAL_FILES}\data\background.jpg"
  File "${LOCAL_FILES}\data\wooddoor3.jpg"
  File "${LOCAL_FILES}\data\windows11d.jpg"
  File "${LOCAL_FILES}\data\windows11e.jpg"
  File "${LOCAL_FILES}\data\windows11f.jpg"
  File "${LOCAL_FILES}\data\windows11g.jpg"
  File "${LOCAL_FILES}\data\windows11h.jpg"
  File "${LOCAL_FILES}\data\vents1.jpg"
  File "${LOCAL_FILES}\data\vents1b.jpg"
SectionEnd

Section /o "Source Code" SEC02
  SetOutPath "$INSTDIR"
  File "${LOCAL_FILES}\skyscraper.ico"
  SetOutPath "$INSTDIR\src"
  File "${LOCAL_FILES}\src\buttonpanel.cpp"
  File "${LOCAL_FILES}\src\buttonpanel.h"
  File "${LOCAL_FILES}\src\callbutton.cpp"
  File "${LOCAL_FILES}\src\callbutton.h"
  File "${LOCAL_FILES}\src\cameracontrol.cpp"
  File "${LOCAL_FILES}\src\cameracontrol.h"
  File "${LOCAL_FILES}\src\camera.cpp"
  File "${LOCAL_FILES}\src\camera.h"
  File "${LOCAL_FILES}\src\debugpanel.cpp"
  File "${LOCAL_FILES}\src\debugpanel.h"
  File "${LOCAL_FILES}\src\door.cpp"
  File "${LOCAL_FILES}\src\door.h"
  File "${LOCAL_FILES}\src\editelevator.cpp"
  File "${LOCAL_FILES}\src\editelevator.h"
  File "${LOCAL_FILES}\src\elevator.cpp"
  File "${LOCAL_FILES}\src\elevator.h"
  File "${LOCAL_FILES}\src\fileio.cpp"
  File "${LOCAL_FILES}\src\floor.cpp"
  File "${LOCAL_FILES}\src\floor.h"
  File "${LOCAL_FILES}\src\globals.cpp"
  File "${LOCAL_FILES}\src\globals.h"
  File "${LOCAL_FILES}\src\loader.cpp"
  File "${LOCAL_FILES}\src\loader.h"
  File "${LOCAL_FILES}\src\meshcontrol.cpp"
  File "${LOCAL_FILES}\src\meshcontrol.h"
  File "${LOCAL_FILES}\src\sbs.cpp"
  File "${LOCAL_FILES}\src\sbs.h"
  File "${LOCAL_FILES}\src\shaft.cpp"
  File "${LOCAL_FILES}\src\shaft.h"
  File "${LOCAL_FILES}\src\skyscraper.cpp"
  File "${LOCAL_FILES}\src\skyscraper.h"
  File "${LOCAL_FILES}\src\stairs.cpp"
  File "${LOCAL_FILES}\src\stairs.h"
  File "${LOCAL_FILES}\src\unix.cpp"
  File "${LOCAL_FILES}\src\unix.h"
SectionEnd

Section "System Files" SEC03
  SetOutPath "$SYSDIR"
  File "${SYSTEM_DIR}\FILE.DLL"
  
  RegDLL "$SYSDIR\FILE.DLL"
  Push "$SYSDIR\FILE.DLL"
  Call AddSharedDLL
SectionEnd

Section "Crystal Space engine" SEC04
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\Skyscraper.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\Skyscraper.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "${PRODUCT_STARTMENU_REGVAL}" "$ICONS_GROUP"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "Application"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "Source code"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "System files"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC04} "Crystal Space engine (required)"
!insertmacro MUI_FUNCTION_DESCRIPTION_END

; AddSharedDLL
 ;
 ; Increments a shared DLLs reference count.
 ; Use by passing one item on the stack (the full path of the DLL).
 ;
 ; Usage:
 ;   Push $SYSDIR\myDll.dll
 ;   Call AddSharedDLL
 ;

 Function AddSharedDLL
   Exch $R1
   Push $R0
   ReadRegDword $R0 HKLM Software\Microsoft\Windows\CurrentVersion\SharedDLLs $R1
   IntOp $R0 $R0 + 1
   WriteRegDWORD HKLM Software\Microsoft\Windows\CurrentVersion\SharedDLLs $R1 $R0
   Pop $R0
   Pop $R1
 FunctionEnd

; un.RemoveSharedDLL
 ;
 ; Decrements a shared DLLs reference count, and removes if necessary.
 ; Use by passing one item on the stack (the full path of the DLL).
 ; Note: for use in the main installer (not the uninstaller), rename the
 ; function to RemoveSharedDLL.
 ;
 ; Usage:
 ;   Push $SYSDIR\myDll.dll
 ;   Call un.RemoveSharedDLL
 ;

 Function un.RemoveSharedDLL
   Exch $R1
   Push $R0
   ReadRegDword $R0 HKLM Software\Microsoft\Windows\CurrentVersion\SharedDLLs $R1
   StrCmp $R0 "" remove
     IntOp $R0 $R0 - 1
     IntCmp $R0 0 rk rk uk
     rk:
       DeleteRegValue HKLM Software\Microsoft\Windows\CurrentVersion\SharedDLLs $R1
     goto Remove
     uk:
       WriteRegDWORD HKLM Software\Microsoft\Windows\CurrentVersion\SharedDLLs $R1 $R0
     Goto noremove
   remove:
     Delete /REBOOTOK $R1
   noremove:
   Pop $R0
   Pop $R1
 FunctionEnd

Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  ReadRegStr $ICONS_GROUP ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "${PRODUCT_STARTMENU_REGVAL}"
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Push "$SYSDIR\FM20.DLL"
  Call un.RemoveSharedDLL
  Push "$SYSDIR\MSCOMCTL.OCX"
  Call un.RemoveSharedDLL
;  Push "$SYSDIR\MSCOMCT2.OCX"
;  Call un.RemoveSharedDLL
  Push "$SYSDIR\dx8vb.dll"
  Call un.RemoveSharedDLL
  Push "$SYSDIR\MSVBVM60.DLL"
  Call un.RemoveSharedDLL
;  Push "$SYSDIR\COMCAT.DLL"
;  Call un.RemoveSharedDLL
;  Push "$SYSDIR\ASYCFILT.DLL"
;  Call un.RemoveSharedDLL
;  Push "$SYSDIR\OLEPRO32.DLL"
;  Call un.RemoveSharedDLL
;  Push "$SYSDIR\OLEAUT32.DLL"
;  Call un.RemoveSharedDLL
  Push "$SYSDIR\MSSTDFMT.DLL"
  Call un.RemoveSharedDLL
  Delete "$INSTDIR\modelviewer\ModelViewer.vbw"
  Delete "$INSTDIR\modelviewer\ModelAbout.frm"
  Delete "$INSTDIR\modelviewer\ModelAbout.frx"
  Delete "$INSTDIR\modelviewer\ModelSettings.frm"
  Delete "$INSTDIR\modelviewer\ModelSettings.frx"
  Delete "$INSTDIR\modelviewer\ModelViewer.frm"
  Delete "$INSTDIR\modelviewer\ModelViewer.frx"
  Delete "$INSTDIR\modelviewer\ModelViewer.ico"
  Delete "$INSTDIR\modelviewer\ModelViewer.vbp"
  Delete "$INSTDIR\modelviewer\gpl.txt"
  Delete "$INSTDIR\modelviewer\ModelViewer.exe"
  Delete "$INSTDIR\Skyscraper.vbw"
  Delete "$INSTDIR\skyscraper.ico"
  Delete "$INSTDIR\Skyscraper.vbp"
  Delete "$INSTDIR\src\Debug.frm"
  Delete "$INSTDIR\src\Debug.frx"
  Delete "$INSTDIR\src\DebugWindow.frm"
  Delete "$INSTDIR\src\DebugWindow.frx"
  Delete "$INSTDIR\src\Designer.frm"
  Delete "$INSTDIR\src\Designer.frx"
  Delete "$INSTDIR\src\EditElevator.frm"
  Delete "$INSTDIR\src\EditElevator.frx"
  Delete "$INSTDIR\src\Elevator.cls"
  Delete "$INSTDIR\src\FileIO.bas"
  Delete "$INSTDIR\src\Floor.cls"
  Delete "$INSTDIR\src\Floorplan.frm"
  Delete "$INSTDIR\src\Floorplan.frx"
  Delete "$INSTDIR\src\LevelEdit.frm"
  Delete "$INSTDIR\src\LevelEdit.frx"
  Delete "$INSTDIR\src\Loader.frm"
  Delete "$INSTDIR\src\Loader.frx"
  Delete "$INSTDIR\src\MeshControl.frm"
  Delete "$INSTDIR\src\MeshControl.frx"
  Delete "$INSTDIR\src\Object.frm"
  Delete "$INSTDIR\src\Object.frx"
  Delete "$INSTDIR\src\Preview.frm"
  Delete "$INSTDIR\src\Preview.frx"
  Delete "$INSTDIR\src\Sim.frm"
  Delete "$INSTDIR\src\Sim.frx"
  Delete "$INSTDIR\src\SimCore.bas"
  Delete "$INSTDIR\src\Viewer.frm"
  Delete "$INSTDIR\src\Viewer.frx"
  Delete "$INSTDIR\data\wooddoor3.jpg"
  Delete "$INSTDIR\data\background.jpg"
  Delete "$INSTDIR\data\bottom.jpg"
  Delete "$INSTDIR\data\Brick1.jpg"
  Delete "$INSTDIR\data\button1.jpg"
  Delete "$INSTDIR\data\common.shader"
  Delete "$INSTDIR\data\Cutston.jpg"
  Delete "$INSTDIR\data\ding1.wav"
  Delete "$INSTDIR\data\downtown.jpg"
  Delete "$INSTDIR\data\elev1.jpg"
  Delete "$INSTDIR\data\elevatorclose.wav"
  Delete "$INSTDIR\data\elevatoropen.wav"
  Delete "$INSTDIR\data\elevmove.wav"
  Delete "$INSTDIR\data\elevstart.wav"
  Delete "$INSTDIR\data\elevstop.wav"
  Delete "$INSTDIR\data\floorsign.jpg"
  Delete "$INSTDIR\data\floorsignbalcony.jpg"
  Delete "$INSTDIR\data\floorsignballroom.jpg"
  Delete "$INSTDIR\data\floorsignhotel.jpg"
  Delete "$INSTDIR\data\floorsignlobby.jpg"
  Delete "$INSTDIR\data\floorsignmaint.jpg"
  Delete "$INSTDIR\data\floorsignmechanical.jpg"
  Delete "$INSTDIR\data\floorsignmez.jpg"
  Delete "$INSTDIR\data\floorsignobservatory.jpg"
  Delete "$INSTDIR\data\floorsignoffices.jpg"
  Delete "$INSTDIR\data\floorsignpool.jpg"
  Delete "$INSTDIR\data\floorsignresidential.jpg"
  Delete "$INSTDIR\data\floorsignroof.jpg"
  Delete "$INSTDIR\data\floorsignskylobby.jpg"
  Delete "$INSTDIR\data\front.jpg"
  Delete "$INSTDIR\data\Granite.jpg"
  Delete "$INSTDIR\data\grndroad1corner.jpg"
  Delete "$INSTDIR\data\grndroad1corner2.jpg"
  Delete "$INSTDIR\data\grndroad1corner3.jpg"
  Delete "$INSTDIR\data\grndroad1knoll1tga.jpg"
  Delete "$INSTDIR\data\grndroad1left.jpg"
  Delete "$INSTDIR\data\grndroad1mid.jpg"
  Delete "$INSTDIR\data\grndroad1mid2.jpg"
  Delete "$INSTDIR\data\grndroad1mid3.jpg"
  Delete "$INSTDIR\data\grndroad1right.jpg"
  Delete "$INSTDIR\data\intro.mp3"
  Delete "$INSTDIR\data\left.jpg"
  Delete "$INSTDIR\data\lobbyfront.jpg"
  Delete "$INSTDIR\data\marb047.jpg"
  Delete "$INSTDIR\data\marb123.jpg"
  Delete "$INSTDIR\data\marb148.jpg"
  Delete "$INSTDIR\data\Marbl3.jpg"
  Delete "$INSTDIR\data\Mason01.jpg"
  Delete "$INSTDIR\data\miscdoor8.jpg"
  Delete "$INSTDIR\data\mp1.bmp"
  Delete "$INSTDIR\data\mp2.bmp"
  Delete "$INSTDIR\data\op1.bmp"
  Delete "$INSTDIR\data\op2.bmp"
  Delete "$INSTDIR\data\plaque.jpg"
  Delete "$INSTDIR\data\pointer.bmp"
  Delete "$INSTDIR\data\qt1.bmp"
  Delete "$INSTDIR\data\qt2.bmp"
  Delete "$INSTDIR\data\right.jpg"
  Delete "$INSTDIR\data\roadfull.jpg"
  Delete "$INSTDIR\data\roadfullr.jpg"
  Delete "$INSTDIR\data\servicedoor2.jpg"
  Delete "$INSTDIR\data\sidewalk1.jpg"
  Delete "$INSTDIR\data\sidewalk1r.jpg"
  Delete "$INSTDIR\data\sidewalkcorner1.jpg"
  Delete "$INSTDIR\data\sidewalkcorner2.jpg"
  Delete "$INSTDIR\data\sidewalkcorner3.jpg"
  Delete "$INSTDIR\data\sidewalkcorner4.jpg"
  Delete "$INSTDIR\data\sidewalkcorner5.jpg"
  Delete "$INSTDIR\data\skyscraper.jpg"
  Delete "$INSTDIR\data\sp1.bmp"
  Delete "$INSTDIR\data\sp2.bmp"
  Delete "$INSTDIR\data\street3.jpg"
  Delete "$INSTDIR\data\suburbs.jpg"
  Delete "$INSTDIR\data\Symb5.jpg"
  Delete "$INSTDIR\data\Text12.jpg"
  Delete "$INSTDIR\data\Text13.jpg"
  Delete "$INSTDIR\data\Text16.jpg"
  Delete "$INSTDIR\data\Textur15.jpg"
  Delete "$INSTDIR\data\top.jpg"
  Delete "$INSTDIR\data\walkway.jpg"
  Delete "$INSTDIR\data\windows08.jpg"
  Delete "$INSTDIR\data\windows11.jpg"
  Delete "$INSTDIR\data\windows11c.jpg"
  Delete "$INSTDIR\data\wooddoor1.jpg"
  Delete "$INSTDIR\data\back.jpg"
  Delete "$INSTDIR\data\windows11d.jpg"
  Delete "$INSTDIR\data\windows11e.jpg"
  Delete "$INSTDIR\data\windows11f.jpg"
  Delete "$INSTDIR\data\windows11g.jpg"
  Delete "$INSTDIR\data\windows11h.jpg"
  Delete "$INSTDIR\data\vents1.jpg"
  Delete "$INSTDIR\data\vents1b.jpg"
  Delete "$INSTDIR\buildings\Triton Center.bld"
  Delete "$INSTDIR\buildings\Glass Tower.bld"
  Delete "$INSTDIR\buildings\Simple.bld"
  Delete "$INSTDIR\changelog.txt"
  Delete "$INSTDIR\designguide.html"
  Delete "$INSTDIR\readme.rtf"
  Delete "$INSTDIR\Skyscraper.exe"

  Delete "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Website.lnk"
  Delete "$DESKTOP\ModelViewer.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\ModelViewer.lnk"
  Delete "$DESKTOP\Skyscraper.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Skyscraper.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Release Notes.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Building Design Guide.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Changelog.lnk"

  RMDir "$SMPROGRAMS\$ICONS_GROUP"
  RMDir "$INSTDIR\data"
  RMDir "$INSTDIR\buildings"
  RMDir "$INSTDIR\src"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd
