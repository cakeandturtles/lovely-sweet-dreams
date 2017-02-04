/// script_drawSurroundingRect3(object, padding, color, alpha)
/// Draw rectangle surrounding specified object
var object = argument0;
var padding = argument1;
draw_set_colour(argument2);
draw_set_alpha(argument3);

// Draw rectangle above object
draw_rectangle(0, 0, 320, object.y-padding, false);
// Draw rectangle below player
draw_rectangle(0, object.y+padding, 320, 240, false);

// Draw rectangle left of player
draw_rectangle(0, 0, object.x-padding, 240, false);

// Draw rectangle right of player
draw_rectangle(object.x+padding, 0, 320, 240, false);
draw_set_alpha(1.0);
