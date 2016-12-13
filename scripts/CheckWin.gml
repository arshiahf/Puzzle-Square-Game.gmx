var numberCorrect = 0

for(i = 0; i < instance_number(gridMarker0); i++)
{
    if instance_find(gridMarker0, i).correctSpot == true
    {
        numberCorrect++
    }
}

if numberCorrect == 9
{
    if show_question("You win! Play again?")
    {
        room_persistent = false
        room_restart()
    }
    else
    {
        game_end()
    }
}
