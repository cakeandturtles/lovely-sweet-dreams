/// script_horizontalCollisions(obj)
var obj = argument0;

// left collision
var solid_obj = collision_rectangle(x-lb+xvel-1, y-tb/2, x, y+bb/2, obj, false, true);
if (solid_obj) {
    xvel = 0;
    x = solid_obj.x+(solid_obj.sprite_width/2)+lb+1;
}
//right collision
solid_obj = collision_rectangle(x, y-tb/2, x+rb+xvel+1, y+bb/2, obj, false, true);
if (solid_obj) {
    xvel = 0;
    x = solid_obj.x-(solid_obj.sprite_width/2)-rb-1;
}
