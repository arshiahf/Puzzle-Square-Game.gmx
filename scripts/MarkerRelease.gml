var closest = instance_nearest(x, y, gridMarker0)
global.attached = false

if point_distance(x, y, closest.x, closest.y) <= 0.5 * sqrt( sqr(gridMarker0.sprite_width) + sqr(gridMarker0.sprite_height))
{
    alarm[0] = 0
    if instance_exists(object_get_parent(self.object_index))
    {
        var incumbent = instance_nearest(closest.x, closest.y, object_get_parent(self.object_index))
        if incumbent.x == closest.x and incumbent.y == closest.y and object_get_parent(incumbent.object_index) == object_get_parent(self.object_index)
        {
            with incumbent
            {
                instance_destroy()
            }
        }
    }
    x = closest.x
    y = closest.y
    depth = trueDepth
}
else
{
    instance_destroy()
}
