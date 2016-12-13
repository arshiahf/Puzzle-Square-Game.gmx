if global.puzzleDifficulty == -1
{
    global.puzzleDifficulty = "very easy"
}

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
show_debug_message("Check 1")

for(i = 0; i < array_length_1d(puzzleShape); i++)
{
    puzzleShape[i].used = 0
}
for(i = 0; i < array_length_1d(puzzleColor); i++)
{
    puzzleColor[i].used = 0
}
show_debug_message("Check 2")

for(i = 0; i < array_length_1d(gMarkers); i++)
{
    while(gMarkers[i].colorOpen != false)
    {
        var rand = irandom(array_length_1d(puzzleColor) - 1)
        var colorCurrent = puzzleColor[rand]
        if colorCurrent.used < 3
        {
            gMarkers[i].color = colorCurrent
            gMarkers[i].colorOpen = false
            colorCurrent.usedColor++
            show_debug_message("Loop 1 " + string(gMarkers[i].colorOpen) + " " + string(colorCurrent) + " " + string(puzzleShape[rand].used))
        }
    }
    while(gMarkers[i].shapeOpen != false)
    {
        var rand = irandom(array_length_1d(puzzleShape) - 1)
        var shapeCurrent = puzzleShape[rand]
        if shapeCurrent.used < 3
        {
            gMarkers[i].shape = shapeCurrent
            gMarkers[i].shapeOpen = false
            show_debug_message("Present used " + string(shapeCurrent.usedShape))
            shapeCurrent.usedShape++
            show_debug_message("Loop 2 " + string(gMarkers[i].shapeOpen) + " " + string(shapeCurrent) + " " + string(shapeCurrent.used))
        }
    }
}
show_debug_message("Check 3")

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
