# This is a basic function to randomize a vaction and to let you know what my favorite and least favorite colors are.

Function VacationPicker{
    $vacationTypes = @("the beach.","take a cruise.","be camping.","take a road trip.","just be sightseeing.","take an adventure.","see a historical location.","be skiing.","see a foreign country.","be hunting sharks.")
    $vacationTypes | get-random
}
"`n"
Write-Host "I like to vacation a specific way, but this time I'm going to"(VacationPicker)
"`n"
Write-Host "But I'm also superstitious with colors so I need to avoid my least favorite ones, and stay near my favorite ones if I'm going to have a good time."
"`n"
Function Colorchoices{
    $FavoriteColor = @("Red And","Orange And","Yellow And","Green And","Blue And","Indigo And","Violet And","Silver And","Gold And","Platinum And","Onyx And")
    $LeastFavoriteColor = @("White.","Black.","Grey.","Gray.","Any_Monotonic Color Really.","Fuchsia.")
    $FavoriteColor | get-random
    $LeastFavoriteColor | get-random
}
Write-Host "My favorite color is:"(ColorChoices)," is one of my least favorite color's I will avoid at all costs."