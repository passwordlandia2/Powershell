# This is my first function just for fun. I struggled with putting it together at first due to coming up with how to select a color from a function and figure out what belongs in or out of a function.

# Here's the starting greeting.
"`n"

$UserInput = Read-Host "Well hello there! I see the way of the force is in you but what does destiny have in store for you. Care to find out?"

"`n"

# I then defined all the color choices and arrays

$LightSideColor = @("Blue", "Green", "Purple")
$DarkSideColor = @("Red")
$FormerButStillLightColor = @("White")
$FormerButChoseDark = "Orange"
$RebelSideColor = @("Magenta", "Cyan", "Indigo")
$RebelWithACause = "The DarkSaber"
$DestinyNoteYetWritten = @("Yellow")

Function Destiny {
# I Combined all the Variables and Arrays into one so that I can call it up easier
    $AllColors = $LightSideColor + $DarkSideColor + $FormerButStillLightColor + $FormerButChoseDark + $RebelSideColor + $DestinyNoteYetWritten

# This way you can get a random selection from all the above colors
    $SelectedColor = $AllColors | Get-Random

# And then I returned the selected color to show up after choosing
    return $SelectedColor
}

# Now to make it easier we can call the function and stores the result

$RandomColor = Destiny

Write-Host "Your choice to say: $UserInput, matters not, for the force compels me to tell you your fate anyways. Let us gaze into what destiny has in store for you. Your lightsaber will determine this..... Ah yes, I see....."
"`n"

# But we're not done because I wanted the result to have an additional message based on the color choice so I used and If/Elseif/Else statement

if ($LightSideColor -contains $RandomColor) {
    Write-Host "You've chosen the way of the Jedi! A noble journey and a virtuous one. Your lightsaber color is $RandomColor."
} elseif ($DarkSideColor -contains $RandomColor) {
    Write-Host "There is great darkness in your heart; I sense you will be a powerful Sith. Your lightsaber is $RandomColor."
} elseif ($FormerButStillLightColor -contains $RandomColor) {
    Write-Host "You once walked the way of the Jedi, but have chosen to leave yet your heart is still just. Your lightsaber is $RandomColor."
} elseif ($FormerButChoseDark -eq $RandomColor) {
    Write-Host "You once walked the Light path but now do as you please, even supporting the dark side to further your ambition. Your lightsaber is $RandomColor."
} elseif ($RebelSideColor -contains $RandomColor) {
    Write-Host "You are a Rebel with a unique path. While you don't support the Jedi, you still oppose the galactic empire and have a greater destiny. Your lightsaber is $RandomColor."
} elseif ($DestinyNoteYetWritten -contains $RandomColor) {
    Write-Host "Your destiny is not yet written. Shrouded with such mystery, your lightsaber is $RandomColor. Be honored as not much is known about your destiny and your journey is unique. I look forward to seeing where this takes you."
} elseif ($RebelWithACause -eq $RandomColor) {
    Write-Host "Your Fate is a peculiar one. You have great leadership in you, a destiny that is riteous but filled with loss and hardship. You will be a symbol to all now that you carry the $RandomColor."
} else {
    Write-Host "Your lightsaber color is $RandomColor."
}

"`n"
#So the final output should say "Well hello there! I see the way of the force is in you but what does destiny have in store for you. Care to find out?"
#Followed by an input that the user types, and no matter the result will read "Your choice to say: <whatever the user put into text>, matters not, for the force compels me to tell you your fate anyways. 
#Let us gaze into what destiny has in store for you. Your lightsaber will determine this..... Ah yes, I see....."
#And whatever the random color it selects it'll have an output of the statement I picked determining their so called fate which is randomized. In this case if they be a jedi, sith, rebel etc...