<#

+doo/-`                                                                                      `-/ood+
 os`./+ooo+/-`                                                                        `-/+ooo+/.`ss 
  os odso/::/+oo+/-`                  ``.---::://////:::---.``                  .:+ooo+:-:/+sho so  
   os +dhmddhs+:-.:+oo+:`   `.:/+++oo+++/::---........---::/++ooo+++/-.    -/+oo/-..:/oyddmmmo oo   
    oo odhNNNmmmdhs+:..:+o+o+/-.``.-::/++oosyyyyhhhhhyyyssoo+/::-.``.:+oooo/.`.:/shdmNNNNNNmo os    
     s+ oddNNNNNNNNmmdho/-.:/+oyhdddmmmmNNNNNNNNNNNNNNNNNNNNNNmmmmmdys+/:-./ohdmNNNNNNNNNNms +s     
     `y/ sddNNNNNNNNNNNNmdddmmNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNmmmNNNNNNNNNNNNNNmy /y`     
      `h:`hhdNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNmh`:h`      
     `-oy`.dhNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNmm. ss:`     
   -+o/:/ohmNNNmmmmmmmmNmmNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNmmmmmmmmmmmNNNNmds/::oo:`  
`/s/-/sdNNmmdhyyssssooshmNmmNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNmmmdysoossssyhhdmNNNNdy/-:o+`
ss`/dNNNNmhsoooooooooooosydmNmNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNmmmhyoooooooooooooydNNNNNNd+`+y
.s+-omNmNNNmdyoooooooooooooydmNmNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNmmmhsoooooooooo+osydmNNNNNNms-/s.
  /s:-shhdmNNNmdyso+oooooooooyhmNmNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNmmdhsoooooooooooshmNNNNNNmdds--o/` 
   `+o--ososhmNNNNmdysoooooooooyhmNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNmdhsoooooo+ooshdmNNNNNNmhhyo--o+.   
     .+o:.+s+/+ydmNNNNmdhsoooooooyhmNNNNNNNNNNNNNNNNNNNNNNNNNNmdhsoooooosyhdmNNNNNNmdysys/.:o+.     
       `+o:./so:-:oydmNNNNNmdhysoooyhmNNNNNNNNNNNNNNNNNNNNNNmmhsoosyhddmNNNNNNNmdyoooyo:./o/`       
         `/o+.-+s+:..:+ydmNNNNNNNmddhhdNNNNNNNNNNmmNNNNNNNNmdhhdmmNNNNNNNNmdho++/oys/--oo-          
            -+o:.:os+-.``.:+shdmNNNNNNNNNNNNNmdy/--/ydmNNNNNNNNNNNNNmmhyo//:/+oss+--+o/.            
              `/o+-./os+:-.`` `.:/oshdmmmmdy+-`      `-+ydmmmmdhso/:-.-://+oys/--/o+.               
                 ./o+-.:os+:--..``    `.--`  `.-:::::-.  `--.````.-:/++osyo/--+o+-                  
                    ./oo:.:+ss+:---..``      /sdmNNNNm+   `.-::/++++sys+:.:oo/.                     
                       `:oo/..:+ss+:-----....`.odNNms:-::/+++++osys+:.-+o+:`                        
                           ./oo+-.-/oss+/:-------/o+++++++osyso/-.:+o+:`                            
                               ./+oo/-.-/+oosso+/:+osyyso+:-.:+oo+:`                                
                                    ./+ooo/-.`.-//+/-..-/ooo+:`                                     
                                          .:/ooooooooo+:.     

#>

######!!!!!!!Make edits to script to run on your device. Please see below!!!!!!################

##Change path to reflect list of devices. Computername or IP address works. 
$IPList = get-content -Path C:\computers.txt


#Line 50 adjust the path to reflect where you would like to export the csv file. 
ForEach($IP in $IPList){
	IF(Test-Connection $IP -Quiet -Count 1){
		$ChromePath = "\\$IP\c$\Program Files*\Google\Chrome\Application\chrome.exe"
		IF(Test-Path $ChromePath){
			$ChromePath = (Resolve-Path $ChromePath).ProviderPath
			$ChromeVersion = [System.Diagnostics.FileVersionInfo]::GetVersionInfo($ChromePath).FileVersion
		}
		[PSCUSTOMOBJECT]@{
			IP = $IP
			ChromeVersion = $ChromeVersion
		} | Export-CSV 'C:\Users\kjon5398\OneDrive - Sysco Corporation\Documents\Chrome\ChromeReport.csv' -NoType -Append
	}ELSE{
		Write-Host "$IP NOT ONLINE"
	}
}