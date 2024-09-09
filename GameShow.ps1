## This is a script written to test if I can run a basic If/Else/Elif conditional statement

$GS1 = "Jeopardy"
$GSHost1 = "Welcome to our show contestant 1. We want to get to know a bit more about you, why don't you tell us what your favorite gameshow is?"
$GSHost2 = "The strong silent type eh? Come on you can tell me, what is it?"
$GSHost3 = "Well why don't we try to at least guess it. I know it's $GS1 isn't it?"
$GSHost4 = "I knew it! Well it's your lucky day because today we will be playing your favorite gameshow"
$GSHost5 = "Well since that's a no, you'll have a tough challenge ahead, but let's play $GS1"
$GSHost6 = "Looks like we won't be getting much out of you so let's play our game $GS1! Best of luck to you."

"`n"
$GSHost1
"`n"
$ans1 = Read-Host -Prompt "As a stoic contestant you don't want to tell your answer, whatever you give will be hidden." -AsSecureString
"`n"
$GSHost2
"`n"
$ans2 = Read-Host -Prompt "Stay Stoic, answer "" " -AsSecureString
"`n"
$GSHost3
"`n"
$ans3 = Read-Host -Prompt "If $GS1 is your favorite game show type yes, if not type no, or if you don't want to answer type I can neither confirm nor deny that statment!"
"`n"
if($ans3 -eq "yes") {Write-Host "$GSHost4"} elseif($ans3 -eq "no") {Write-Host "$GSHost5"} else{"$GSHost6"}
"`n"