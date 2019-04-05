#This script is will check the desired directory's size and return the total amount and all give the size of each sub-directory
#Pull your sword warrior!

#Pull sword will map the directory to the following path in an array. Edit your desired directory path here.  
$Pullsword = "directory path here"

#Save the queen will measure the the file directory / pull sword will be added to the conversion 
$SaveTheQueen = (Get-ChildItem $Pullsword | Measure-Object -property length -sum)
"$Pullsword -- " + "{0:N2}" -f ($SaveTheQueen.sum / 1MB) + " MB"

# Save the queen will be assigned a new array to the  pull each subdirectory in the directory *Some files fail to accept the strings*
$SaveTheQueen = (Get-ChildItem $Pullsword -recurse | Where-Object {$_.PSIsContainer -eq $True} | Sort-Object)
foreach ($i in $SaveTheQueen)
    {
        $subFolderItems = (Get-ChildItem $i.FullName | Measure-Object -property length -sum)
        $i.FullName + " -- " + "{0:N2}" -f ($subFolderItems.sum / 1MB) + " MB"
    }


## By Kyle Jones
