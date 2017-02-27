/// script_playerRpgInput() 

stopTimer -= 1;

var spd = 1.5;
if (stopTimer <= 0) {
    // Horizontal input
    xvel = 0;    
    horizontal_input = false;
    if (keyboard_check(global.INPUT_RIGHT)) {
        xvel = spd;
        horizontal_input = true;
        xfacing = "right";
    }
    else if (keyboard_check(global.INPUT_LEFT)) {
        xvel = -spd;
        horizontal_input = true;
        xfacing = "left";
    }
    
    // Vertical input
    yvel = 0;
    vertical_input = false;
    if (keyboard_check(global.INPUT_DOWN)) {
        yvel = spd;
        vertical_input = true;
        yfacing = "down";
    } else if (keyboard_check(global.INPUT_UP)) {
        yvel = -spd;
        vertical_input = true;
        yfacing = "up";
    }
    
    // Diagonal modifications
    if (vertical_input && horizontal_input) {
        yvel *= 0.71;
        xvel *= 0.71;
    }
    if (vertical_input && !horizontal_input) {
        xfacing = "none";
    }
    if (horizontal_input && !vertical_input) {
        yfacing = "none";
    }
} else if (stopTimer > 0) {
    xvel = 0;
    yvel = 0;
}
