if global.attached != false and selected == true
{
    alarm[0] = 0
    var closest = instance_nearest(x, y, gridMarker0)
    
    if point_distance(x, y, closest.x, closest.y) < 0.5 * sqrt(sqr(gridMarker.sprite_width) + sqr(gridMarker.sprite_height))
    {
        if instance_exists(pieceGeneric)
        {
            for (i = 0; i < instance_number(pieceGeneric); i++)
            {
                var inst = instance_find(pieceGeneric, i)
                if inst.x == closest.x and inst.y == closest.y and inst != self
                {
                    inst.x = inst.home.x
                    inst.y = inst.home.y
                }
            }
        }
        
        x = closest.x
        y = closest.y
        
        if instance_exists(dynamicGeneric)
        {
            for(i = 0; i < instance_number(dynamicGeneric); i++)
            {
                var inst = instance_find(dynamicGeneric, i)
                if inst.x == closest.x and inst.y == closest.y
                {
                    with inst
                    {
                        instance_destroy()
                    }
                }
            }
        }
    }
    else
    {
        x = home.x
        y = home.y
    }
    
    depth = 0
    global.attached = false
}
