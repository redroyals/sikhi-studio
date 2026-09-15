; Concat's Windows installer.
;
; Built by build-app.yml with Inno Setup from the very folder the zip is
; made of, so the two ship the same files; the zip is the portable copy,
; this is the one that puts Concat in the Start menu and can take it out
; again. Everything it needs is handed in on the command line:
;
;   iscc /DVersion=0.2.2 /DArch=x64compatible /DSuffix=x86_64 ^
;        /DStage=C:\...\stage\Concat-0.2.2-windows-x86_64 /DOut=C:\...\stage ^
;        assets\windows\concat.iss
;
; Arch is Inno's own word for the machine: x64compatible for the x86_64
; build (which also installs on ARM PCs, under emulation), arm64 for the
; native one. Suffix is the bundle's word for it, which names the file.

#ifndef Version
  #error Version is required
#endif
#ifndef Arch
  #error Arch is required: x64compatible or arm64
#endif
#ifndef Suffix
  #error Suffix is required: x86_64 or aarch64
#endif
#ifndef Stage
  #error Stage is required: the staged folder to install
#endif
#ifndef Out
  #define Out "."
#endif

[Setup]
; One id for the life of the product, so an install over an older one is
; an upgrade and not a second copy.
AppId={{2802213B-3C31-483C-A74B-46EBAB500C23}
AppName=Sikhi Studio
AppVersion={#Version}
AppVerName=Sikhi Studio {#Version}
AppPublisher=Sikhi Studio contributors
AppPublisherURL=https://github.com/redroyals/sikhi-studio
AppSupportURL=https://github.com/redroyals/sikhi-studio/issues
AppUpdatesURL=https://github.com/redroyals/sikhi-studio/releases
DefaultDirName={autopf}\Sikhi Studio
DefaultGroupName=Sikhi Studio
DisableProgramGroupPage=yes
LicenseFile=..\..\LICENSE
OutputDir={#Out}
OutputBaseFilename=SikhiStudio-{#Version}-windows-{#Suffix}-setup
SetupIconFile=..\icons\concat.ico
UninstallDisplayIcon={app}\concat.ico
UninstallDisplayName=Sikhi Studio
Compression=lzma2/max
SolidCompression=yes
WizardStyle=modern
ArchitecturesAllowed={#Arch}
ArchitecturesInstallIn64BitMode={#Arch}
; For the user alone unless they ask for the machine: no prompt for an
; administrator to install a video editor into one's own account.
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#Stage}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\icons\concat.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\Concat"; Filename: "{app}\concat.exe"; IconFilename: "{app}\concat.ico"
Name: "{autodesktop}\Concat"; Filename: "{app}\concat.exe"; IconFilename: "{app}\concat.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\concat.exe"; Description: "{cm:LaunchProgram,Concat}"; Flags: nowait postinstall skipifsilent
