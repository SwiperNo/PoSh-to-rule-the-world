$portName = "TCPPort10.157.128.161"
$printDriverName = "Edinburg HP"
 
 
$portExists = Get-Printerport -Name $portname -ErrorAction SilentlyContinue
 
if (-not $portExists) {
  Add-PrinterPort -name $portName -PrinterHostAddress "10.157.128.161"
}
 
$printDriverExists = Get-PrinterDriver -name $printDriverName -ErrorAction SilentlyContinue
 
if ($printDriverExists) {
    Add-Printer -Name "Edinburg HP" -PortName $portName -DriverName $printDriverName
}else{
    Write-Warning "Printer Driver not installed"
}