# I wrote this script to test out using functions where I overwrote the same function name with what came next 
# when it came to a Q&A read-host, write-host format.

"`n"
function ObiWan {
    param($Greet,$Greet2)
    Write-Host "Well hello there! I am Obi Wan Kenobi, and you must be" $Greet $Greet2
}
obiwan "The Emissary!" "It's a pleasure to meet you"

"`n"
function ObiWan {
    param($Greet)
    Write-Host "By the way, I probably should have asked your name first traveler. Just in case, what is your name?"
    "`n"
    $Prompt = Read-Host "Type your name"
    "`n"
    Write-Host "Ah yes, that's right"$Prompt "I've been expecting you."
    "`n"
}
obiwan

function ObiWan {
    param($Greet,$Greet3)
    Write-Host "Forgive my lack of manners, there are spies everywhere and you can't trust anyone anymore? Tell me your name again?"
    "`n"
    $Prompt = Read-Host "Type your name"
    "`n"
    Write-Host "Right, Right Right. Well there's not much time left" $Prompt,$Greet3
    "`n"
}
obiwan "" "We must leave at once! Otherwise the Empire will find us"