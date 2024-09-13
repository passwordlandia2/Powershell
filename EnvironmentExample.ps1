###This is me practicing writing environment variables, basically I added three new environment variables, called them up and printed out a quick statement.
 
##First I had to make sure that the names I was planning for the below script wasn't already taken so I printed my Env variables using:
 
Get-ChildItem Env:
 
$Env:SUPERUSER = "Newly Lost Soul"
$Env:PLACE = "Heaven"
$Env:PLACE2 = "Hell"
 
###Then check to see if it was created using the command again of:
 
Get-ChildItem Env:
"`n"
Write-Host "Hello, $Env:SUPERUSER! Welcome to $Env:PLACE Or is this $Env:PLACE2 ? You'll find out soon enough!"
"`n"
Write-Host "Your eternity awaits, Good Luck!"
