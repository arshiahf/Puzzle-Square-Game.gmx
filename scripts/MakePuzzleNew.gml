if global.puzzleDifficulty == -1
{
    global.puzzleDifficulty = "very easy"
}

//
var blue = "blue"
var red = "red"
var green = "green"
var square = "square"
var circle = "circle"
var triangle = "triangle"

{
    puzzleColor[0] = blue
    puzzleColor[1] = red
    puzzleColor[2] = green
}
{
    puzzleShape[0] = square
    puzzleShape[1] = circle
    puzzleShape[2] = triangle
}

for(i = 0; i < instance_number(gridMarker0); i++)
{
    gMarkers[i] = instance_find(gridMarker0, i)
}

{
    randArray[0] = false
}

for (i = 0; i < array_length_1d(puzzleColor); i++)
{
    for (j = 0; j < array_length_1d(puzzleShape); j++)
    {
        var done = false
        while done == false
        {
            var rand = irandom(array_length_1d(gMarkers) - 1)
            var usable = true
            if array_length_1d(randArray[0]) > -1
            {
                for (k = 0; k < array_length_1d(randArray); k++)
                {
                    if rand == randArray[k]
                    {
                        usable = false
                    }
                }
            }
            if usable == true
            {
                gMarkers[rand].color = puzzleColor[i]
                gMarkers[rand].shape = puzzleShape[j]
                if randArray[0] == false
                {
                    randArray[0] = rand
                }
                else
                {
                    randArray[array_length_1d(randArray)] = rand
                }
                done = true
                show_debug_message(string(rand) + " " + string(puzzleColor[i]) + " " + string(puzzleShape[j]))
            }
        }
    }
}

switch global.puzzleDifficulty
{
    case "very easy":
        ;
    case "easy":
        ;
    case "normal":
        ;
    case "hard":
        ;
    case "very hard":
        ;
    case "impossible":
        ;
    default:
        ;
}
