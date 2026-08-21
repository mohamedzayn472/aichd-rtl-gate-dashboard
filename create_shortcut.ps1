$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut("C:\Users\moham\Desktop\AICD Dashboard.lnk")
$shortcut.TargetPath = "c:\Users\moham\Desktop\AICD Project\Open_Dashboard.bat"
$shortcut.WorkingDirectory = "c:\Users\moham\Desktop\AICD Project"
$shortcut.Save()
Write-Host "Shortcut created successfully on Desktop!"
