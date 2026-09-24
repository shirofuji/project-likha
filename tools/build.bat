SET SOURCE_PATH=%1
SET BUILD_PATH=%2
SET "INCLUDE=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.44.35207\include;C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt;C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\um;C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\shared"
SET "LIB=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.44.35207\lib\x86;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.26100.0\ucrt\x86;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.26100.0\um\x86"

ECHO Building project from %SOURCE_PATH% to %BUILD_PATH%

cl %SOURCE_PATH% /Fe%BUILD_PATH%\main.exe /EHsc /link kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib