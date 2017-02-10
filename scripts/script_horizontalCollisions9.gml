/// script_horizontalCollisions9(obj, lb, tb, rb, bb)
var obj = argument0;
var lb = argument1;
var tb = argument2;
var rb = argument3;
var bb = argument4;

// left collision
var solid_obj = collision_rectangle(x-lb+xvel-1, y-tb/2, x, y+bb/2, obj, false, true);
if (solid_obj) {
    xvel = 0;
    x = solid_obj.x+(solid_obj.sprite_width/2)+lb;
}
//right collision
solid_obj = collision_rectangle(x, y-tb/2, x+rb+xvel+1, y+bb/2, obj, false, true);
if (solid_obj) {
    xvel = 0;
    x = solid_obj.x-(solid_obj.sprite_width/2)-rb;
}
