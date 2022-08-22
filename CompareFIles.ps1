$a = get-content ''
$b = Get-Content ''


Compare-Object -ReferenceObject $a -DifferenceObject $b -IncludeEqual | Export-Csv -Path 'C:\Results\help.csv'
