Get-Childitem C:\users\kjon5398\ | Measure-object -Property length -sum
 $onedir=Get-Childitem C:\users\kjon5398\ | Measure-object -Property length -sum
$onedir
$onedir.size/1MB
$onedir.sum/1MB
"{0:N2}" ($onedir.sum/1MB)
"{0:N2}" -f  ($onedir.sum/1MB) + "MB"
get-history
cd C:\scripts\
.\Get-DirStats.ps1
powershell -executionpolicy ByPass -file .\Get-DirStats.ps1 C:\scripts
powershell -executionpolicy ByPass -file .\Get-DirStats.ps1 C:\users\kjon5398
powershell -executionpolicy ByPass -file .\Get-DirStats.ps1 C:\users
