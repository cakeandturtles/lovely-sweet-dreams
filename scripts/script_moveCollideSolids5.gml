/// script_moveCollideSolids5()

// left collision
var solid_obj = collision_rectangle(x-8+xvel-1, y-8, x, y, o_solid4, false, true);
if (solid_obj) {
    xvel = 0;
    x = solid_obj.x+(solid_obj.sprite_width/2)+8;    
}
//right collision
solid_obj = collision_rectangle(x, y-8, x+8+xvel+1, y, o_solid4, false, true);
if (solid_obj) {
    xvel = 0;
    x = solid_obj.x-(solid_obj.sprite_width/2)-8;;
}
x += xvel;

// gravity
yvel += grav;
if (yvel > terminal_yvel) 
    yvel = terminal_yvel;
    
// top collision
solid_obj = collision_rectangle(x-2, y-8+yvel-1, x+2, y, o_solid4, false, true);
if (solid_obj) {
    yvel = 0.5;
    y = solid_obj.y+(solid_obj.sprite_height/2)+8;
}
// bottom collision
solid_obj = collision_rectangle(x-2, y, x+2, y+8+yvel+1, o_solid4, false, true);
if (solid_obj) {
    on_ground = true;
    yvel = 0;
    y = solid_obj.y-(solid_obj.sprite_height/2)-8;
} else {
    on_ground = false
}
y += yvel;
