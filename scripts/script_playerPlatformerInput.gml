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
        script_stopX();
    }
    
    // fire ghosts
    if (keyboard_check_pressed(global.INPUT_X)) {
        //script_fireGhost(true);
    }
    
    // jump input
    if (keyboard_check_pressed(global.INPUT_JUMP)) {
        script_jump();
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
    if (keyboard_check_pressed(global.INPUT_DOWN)) {
        self.on_ground = false;
    }
} else {
    script_stopX();
}
