// script_topCollisions(obj)
var obj = argument0;
solid_obj = collision_rectangle(x-lb/2, y, x+rb/2, y+bb+yvel+1, obj, false, true);
if (yvel >= 0 and solid_obj) {
    on_ground = true;
    yvel = 0;
    y = solid_obj.y-(solid_obj.sprite_height/2)-bb;
}
