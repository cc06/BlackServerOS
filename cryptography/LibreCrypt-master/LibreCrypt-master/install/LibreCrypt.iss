; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
; additions (c) tdk 
; licence: GPL

#define MyAppName "LibreCrypt"
#define MyAppVersion "6.3 Beta"
#define MyAppPublisher "LibreCrypt"
#define MyAppURL "http:\\LibreCrypt.eu"
#define MyAppExeName "LibreCrypt.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{650A6F8D-35DD-4162-A119-A78A2B7E7885}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputBaseFilename=InstallLibreCrypt_v63Beta
Compression=lzma
SolidCompression=yes
SetupIconFile=P:\src\Common\Common\images\DoxBox.ico
; set test signing on so always restart
AlwaysRestart=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.3

[Files]
; exes dlls etc
Source: "P:\bin\PC\LibreCrypt.exe"; DestDir: "{app}"; Flags: ignoreversion 
Source: "P:\bin\PC\LibreCryptExplorer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "P:\bin\PC\amd64\*"; DestDir: "{app}\amd64"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "P:\bin\PC\DLLs\Release\Win32\*.dll"; DestDir: "{app}\DLLs\Release\Win32"; Flags: ignoreversion recursesubdirs createallsubdirs 
Source: "P:\bin\PC\x86\*"; DestDir: "{app}\x86"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "P:\bin\PC\xp_86\*"; DestDir: "{app}\xp_86"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "P:\bin\PC\cryptlib\*.dll"; DestDir: "{app}\cryptlib";
Source: "P:\bin\PC\locale\*"; DestDir: "{app}\locale"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
; docs
Source: "P:\docs\*.html"; DestDir: "{app}\docs"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "P:\docs\*.css"; DestDir: "{app}\docs"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "P:\docs\FORENSIC METHODS FOR DETECTION OF DENIABLE ENCRYPTION.pdf"; DestDir: "{app}\docs"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "P:\docs\images\*"; DestDir: "{app}\docs\images"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "P:\docs\images\screenshots\PC\*"; DestDir: "{app}\docs\images\screenshots\PC"; Flags: ignoreversion recursesubdirs createallsubdirs


[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\LibreCrypt Explorer"; Filename: "{app}\LibreCryptExplorer.exe"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{commondesktop}\LibreCrypt Explorer"; Filename: "{app}\LibreCryptExplorer.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

; run after reboot to install drivers
[Registry]
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\RunOnce"; ValueType: "string"; ValueName: "LibreCrypt install drivers after restart"; ValueData: "{app}\{#MyAppExeName} /driverControl install /filename all /silent" ; Flags: preservestringtype;

[UninstallRun]
; uninstall drivers - show progress if not silent
Filename: "{app}\{#MyAppExeName}"; Parameters: "/driverControl uninstall /driverName all /SetTestMode off"; Flags: runascurrentuser runhidden; StatusMsg: "Removing Drivers ..."       

[Run]
; install drivers - show progress if not silent
; Filename: "{app}\{#MyAppExeName}"; Parameters: "/drivercontrol install /filename all /silent"; Description: "Install Drivers"; Flags: runascurrentuser runhidden skipifnotsilent; StatusMsg: "Installing Drivers..."       
; Filename: "{app}\{#MyAppExeName}"; Parameters: "/drivercontrol install /filename all"; Description: "Install Drivers"; Flags: runascurrentuser runhidden skipifsilent; StatusMsg: "Installing Drivers..."       
Filename: "{app}\{#MyAppExeName}"; Parameters: "/setTestMode on /silent"; Description: "Enable Windows Test Mode"; Flags: runascurrentuser runhidden; StatusMsg: "Enabling Windows Test Mode..."              
; Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent




