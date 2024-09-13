$RichFudge = Read-Host -Prompt "Was the fudge you ate deliciuous? Super delicious? or gross pick one I'm dying to know" 

if($RichFudge -contains "delicious") {
    Write-Host "Sweet!"
}
elseif($RichFudge -contains "gross") {
    Write-Host "Sorry to hear that I'll make cake next time."
}
else {
    Write-Host "That fudge...Daaaang! It's good!!!"
}