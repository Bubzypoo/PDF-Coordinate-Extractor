; Script to create an installer for PDF Coordinate Extractor

[Setup]
; Basic Information
AppName=PDF Coordinate Extractor
AppVersion=1.0.0
DefaultDirName={pf}\PDF Coordinate Extractor
DefaultGroupName=PDF Coordinate Extractor
OutputBaseFilename=PDF_Coordinate_Extractor_Installer
SetupIconFile="D:\Program Files\Inno Setup 6\PDF Coordinate Extractor\InstallerFiles\pdfextractor.ico"
Compression=lzma
SolidCompression=yes

; Require Administrator Privileges
PrivilegesRequired=admin

; Include Tesseract Installation
[Files]
Source: "D:\Program Files\Inno Setup 6\PDF Coordinate Extractor\InstallerFiles\pdfextractor.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Program Files\Inno Setup 6\PDF Coordinate Extractor\InstallerFiles\tesseract-ocr-w64-setup-5.5.0.20241111.exe"; DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall
Source: "D:\Program Files\Inno Setup 6\PDF Coordinate Extractor\InstallerFiles\pdfextractor.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Program Files\Inno Setup 6\PDF Coordinate Extractor\InstallerFiles\README.txt"; DestDir: "{app}"; Flags: isreadme

; Create Temp Folder for Crops
[Dirs]
Name: "{app}\temp"; Flags: uninsalwaysuninstall

; Registry Entries for Uninstaller
[Registry]
Root: HKCU; Subkey: "Software\PDF Coordinate Extractor"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Flags: uninsdeletekey

; Shortcuts
[Icons]
Name: "{group}\PDF Coordinate Extractor"; Filename: "{app}\pdfextractor.exe"; WorkingDir: "{app}"; IconFilename: "{app}\pdfextractor.ico"
Name: "{group}\Uninstall PDF Coordinate Extractor"; Filename: "{uninstallexe}"

; Install Tesseract silently
[Run]
Filename: "{tmp}\tesseract-ocr-w64-setup-5.5.0.20241111.exe"; Parameters: "/SILENT"; Flags: nowait postinstall

; Uninstall Section
[UninstallDelete]
Type: files; Name: "{app}\temp\*.*"
Type: dirifempty; Name: "{app}\temp"
