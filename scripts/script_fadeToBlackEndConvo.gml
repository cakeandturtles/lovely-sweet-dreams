/// draw the fade to black before and after teleport
var alpha = (fade_time - abs(timer)) / fade_time;
if (timer > 0) {
    alpha *= 2;
}
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, room_width, room_height, false);

// reset
draw_set_alpha(1.0);
