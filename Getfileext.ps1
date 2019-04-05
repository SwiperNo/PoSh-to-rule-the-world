$filetypes = '*.rmc'
#$filetypes = '*.jpg','*.pst','*.exe','*.ini','*.mp3','*.mp4'
#test string below

$Location = "C:\users\kjon5398\desktop"

#$Location = "\\ms013fs01\SW"

#Add user input for next location 
Get-ChildItem $Location -Include $filetypes -Recurse -Force | Export-Csv "C:\Test.csv"