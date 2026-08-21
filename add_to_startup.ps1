$startupFolder = [Environment]::GetFolderPath('Startup')
$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut("$startupFolder\AICD Dashboard.lnk")
$shortcut.TargetPath = "c:\Users\moham\Desktop\AICD Project\Open_Dashboard.bat"
$shortcut.WorkingDirectory = "c:\Users\moham\Desktop\AICD Project"
$shortcut.Save()
Write-Host "Added AICD Dashboard to Windows Startup folder!"
