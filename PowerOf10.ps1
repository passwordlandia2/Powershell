# This is my script I wrote to do the powerof10 from practice.
# It uses child items and integers to get everything you input to equal 10 no matter what 
# so long as the integer is a positive whole number

$Env:USER = "MyName"
Get-Childitem Env:
"`n"
Write-Host "Greetings, $Env:USER!"
"`n"
Write-Host "Whatever number you start with, I will morph it into 10 through the powers of mathematics"
"`n"
$original_number = Read-Host "Type a number, any number "

[Int]$original_number = $original_number

$final_number = $original_number
$final_number = $final_number + 5
$final_number *= 3
$final_number -= 15
$final_number /= $original_number
$final_number += 7
$number_is_10 = $final_number -eq 10
"`n"
Write-Host "The number is equal to 10: $number_is_10."
"`n"
Write-Host "The final number is $final_number"