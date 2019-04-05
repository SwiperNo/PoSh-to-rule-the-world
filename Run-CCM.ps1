#$Server = Read-Host "Enter computername please"
 #get-wmiobject -ComputerName $name 
 #Invoke-WMIMethod -ComputerName $Server -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000026}"
 #Invoke-WMIMethod -ComputerName $Server -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000026}"
 #Invoke-WMIMethod -ComputerName $Server -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000027}"
 # version 2 will the other commands above
 
# function Send-Pac {

# param($Computername = $null, $Count = "1")
# if ($Computername -eq $null)
# {Test-Connection -Destination (Get-netroute -DestinationPrefix 0.0.0.0/0 | select-object -ExpandProperty Nexthop) -Count $Count}
#    else
#    {$Route=Invoke-command -ComputerName $Computername {Get-NetRoute -DestinationPrefix 0.0.0.0/0 | Select-Object -ExpandProperty Nexthop};
#    Test-Connection -Source $Computername -destination $Route -Count $Count
#    }
# }
 
 
 
 
 function Run-Ccm

 {

 param($Computername)

 #[Reflection.Assembly]::LoadWithPartialName('System.Speech') | Out-Null
 Invoke-WmiMethod -ComputerName $Computername -Namespace root\ccm -Class SMS_CLIENT -name TriggerSchedule "{00000000-0000-0000-0000-000000000001}"
 Invoke-WMIMethod -ComputerName $Computername -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000121}"
 Invoke-WMIMethod -ComputerName $Computername -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000003}"
 Invoke-WMIMethod -ComputerName $Computername -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000010}"
 Invoke-WMIMethod -ComputerName $Computername -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000001}"
 Invoke-WMIMethod -ComputerName $Computername -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000021}"
 Invoke-WMIMethod -ComputerName $Computername -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000022}"
 Invoke-WMIMethod -ComputerName $Computername -Namespace root\ccm -Class SMS_CLIENT -Name TriggerSchedule "{00000000-0000-0000-0000-000000000002}"
 
 }
 
 