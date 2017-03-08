/// script_playerPlatformerRender()

// update player sprite

// set sprite_index based on state
sprite_index = asset_get_index("s_player_" + self.color);
if (!on_ground) {
    if (image_index < 5 || image_index > 6) image_index = 5;
} else if (horizontal_input) {
    if (image_index < 1 || image_index > 5) image_index = 1;
} else {
    image_index = 0;
}
