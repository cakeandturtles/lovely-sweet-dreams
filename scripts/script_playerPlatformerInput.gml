/// script_playerPlatformerInput()

// Horizontal input
stopTimer -= 1;
horizontal_input = false;
if (stopTimer <= 0) {
    var spd = terminal_xvel;
    if (keyboard_check(global.INPUT_RIGHT)) {
        xvel = spd;
        horizontal_input = true;
        image_xscale = 1;
    }
    else if (keyboard_check(global.INPUT_LEFT)) {
        xvel = -spd;
        horizontal_input = true;
        image_xscale = -1;
    } else {
        if (xvel > 0){ 
            xvel -= xacc;
            if (xvel < 0) xvel = 0;
        } else if (xvel < 0) {
            xvel += xacc;
            if (xvel > 0) xvel = 0;
        }
    }
    
    // fire ghosts
    if (keyboard_check_pressed(global.INPUT_X)) {
        script_fireGhost(true);
    }
    
    // jump input
    if (keyboard_check_pressed(global.INPUT_SPACE)) {
        if (on_ground || place_meeting(x, y, o_water4)) {
            if (on_ground) {
                yvel = jump_yvel;
                audio_play_sound(snd_jump, 1, false);
            }
            else if (place_meeting(x, y, o_water4)) {
                yvel = jump_yvel+2;
            }
        }
    }
    
    // gravity manipulation
    // hover for a short moment when pressing z
    if (keyboard_check_pressed(global.INPUT_Z)) {
        yvel = 0;
    }
    
    // hover when pressing up
    // if (keyboard_check(global.INPUT_JUMP)) { 
    //     grav = grav_up;
    //     terminal_yvel = terminal_yvel_up;
    // } else {
    //     grav = grav_normal;
    //     terminal_yvel = terminal_yvel_normal;
    // }
    
    // Pressing down
    if (keyboard_check(global.INPUT_DOWN)) {
        self.down = true;
    } else {
        self.down = false;
    }
}
