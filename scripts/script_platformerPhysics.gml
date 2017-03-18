/// script_platformerPhysics(arguments...) move and collide with solids (and other supplied arguments)

// horizontal collision
script_horizontalCollisions(o_solid);
script_horizontalCollisions(argument0);
script_horizontalCollisions(argument1);
script_horizontalCollisions(argument2);
script_horizontalCollisions(argument3);
script_horizontalCollisions(argument4);
x += xvel;

// gravity
if (!on_ground) {
    yvel += grav;
    if (yvel > terminal_yvel) {
        yvel = terminal_yvel;
    }
}

script_fallOffGround();

// vertical collision
script_verticalCollisions(o_solid);
if (!self.down) {
    script_topCollisions(o_topSolid);
}
script_verticalCollisions(argument0);
script_verticalCollisions(argument1);
script_verticalCollisions(argument2);
script_verticalCollisions(argument3);
script_verticalCollisions(argument4);
if (!was_on_ground && on_ground) {
    audio_play_sound(snd_land9, 1, false);
}
    
y += yvel;
