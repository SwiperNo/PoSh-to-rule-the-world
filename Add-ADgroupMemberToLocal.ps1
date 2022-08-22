#$name = Read-Host 'What is the username?'

#$DomainUser = $name
#$LocalGroup = "Administrators"
#$LocalGroup = "Power Users"
#$Computer   = $env:computername
#$Domain     = $env:userdomain

#if($name -match ""){
#$group =([ADSI]"WinNT://$Computer/$LocalGroup,group")
#$group.psbase.Invoke("Add",([ADSI]"WinNT://$Domain/$DomainUser").path)
#Write-Host "User added successfully! Restarting in 30 seconds"
#Restart-Computer -Timeout 30 
#}
#else{ 
#write-host "Restart script please"
#}
