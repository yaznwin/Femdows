taskkill /im explorer.exe /f
timeout /t 3
C:\Femdows\AdvancedRun.exe /EXEFilename "%systemroot%\system32\cmd.exe" /CommandLine "/c rd /s /q %localappdata%\Microsoft\Windows\Explorer\" /StartDirectory "" /RunAs 8 /Run 
C:\Femdows\AdvancedRun.exe /EXEFilename "%systemroot%\system32\cmd.exe" /CommandLine "/c rd /s /q %localappdata%\Microsoft\Windows\Explorer\" /StartDirectory "" /RunAs 4 /Run 
timeout /t 3
explorer.exe
