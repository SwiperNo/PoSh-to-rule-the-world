$vol = get-wmiobject -Class Win32_Volume | where{$_.Name -eq 'E:\'}  
$vol.DriveLetter = $null  
$vol.Put()  
$vol.Dismount($false, $false)
