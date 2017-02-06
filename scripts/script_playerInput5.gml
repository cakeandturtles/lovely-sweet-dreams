// Horizontal input
stopTimer -= 1;
horizontal_input = false;
xvel = 0;
if (stopTimer <= 0) {
    var spd = 2;
    if (keyboard_check(vk_right)) {
        xvel = spd;
        horizontal_input = true;
        image_xscale = 1;
    }
    else if (keyboard_check(vk_left)) {
        xvel = -spd;
        horizontal_input = true;
        image_xscale = -1;
    }
}
