#CHange computer name of the device + condition 
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

$answer = Read-Host -Prompt 'Do you want to change the computer name?'

# First condition - 1) name comupter 2) take user creds 3) Rename computer using stored cred 4) write host if yes is the answer
    if ($answer -match "yes"){
        $computername = Read-Host -Prompt "What will be the name of the computer?"
        #This part of the script will contain your credentials to change the computername and priveledges
        $cred = Get-Credential -Message "This will be used to changed the computername. Do not worry!"
        #$cred = Read-Host -Prompt "Enter your network username" - Uneeded string
        Rename-Computer -NewName "$computername" -LocalCredential $cred -DomainCredential $cred
        Write-Host "Computername has been changed to $computername successfully!" 
        }

#Second condition - If answer is no move on to second portion of the script to set privledges
    elseif($answer -match "no"){
        Write-Host "Moving to the next part of the script"
        }

#Third condition - If answer is anything else - loop to the beginning of the script to accept the right answer
    else{
        write-host "Please answer with yes or no"
        }


#Second half of script        

#$name = Read-Host 'What is the username?'

#$DomainUser = $name
#$LocalGroup = "Administrators"
#$LocalGroup = "Power Users"
#$Computer   = $env:computername
#$Domain     = $env:userdomain

if($name -match ""){
$group =([ADSI]"WinNT://$Computer/$LocalGroup,group")
$group.psbase.Invoke("Add",([ADSI]"WinNT://$Domain/$DomainUser").path)
Write-Host "User added successfully! Restarting in 30 seconds"
Restart-Computer -Timeout 30 


}
else{ 
write-host "Restart script please"
}
$name = Read-Host 'What is your username?'

$DomainUser = $name
$LocalGroup = "Power Users"
$Computer   = $env:computername
$Domain     = $env:userdomain

$group =([ADSI]"WinNT://$Computer/$LocalGroup,group")
$group.psbase.Invoke("Add",([ADSI]"WinNT://$Domain/$DomainUser").path
