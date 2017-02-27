/// script_updatePlayerSpriteRpg()

/// update player sprite
// Update sprite index and image properties based on facing
if (xfacing == "left")
    image_xscale = -1;
else image_xscale = 1;

if (yfacing == "none") {
    if (xfacing == "left" || xfacing == "right")
        sprite_index = s_playerSide5;
} else if (xfacing == "none") {
    if (yfacing == "down")
        sprite_index = s_playerDown5;
    else if (yfacing == "up")
        sprite_index = s_playerUp5;
} else {
    if (yfacing == "down")
        sprite_index = s_playerSideDown5;
    else if (yfacing == "up")
        sprite_index = s_playerSideUp5;
}

if (horizontal_input || vertical_input) {
    image_speed = 0.1;
} else {
    image_speed = 0;
    image_index = 0;
}
