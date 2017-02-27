/// script_playerPlatformerStep() call other platformer step scripts
script_playerPlatformerInput();
script_platformerPhysics(noone, noone, noone, noone, noone);

// TRY TO COLLIDE WITH DEATH OBJECTS!!!
var killer = collision_rectangle(x-lb, y-tb, x+rb, y+bb, o_deathObj, false, true);
if (killer) {
    audio_play_sound(snd_hurt, 0, false);
    xvel = 0;
    yvel = 0;
    var player = self;
    with (o_checkpoint) {
        if (self.activated) {
            player.x = self.x;
            player.y = self.y;
        }
    }
}

// update player sprite

// set sprite_index based on state
if (!on_ground) {
    sprite_index = asset_get_index(plat_jump_sprite + self.color);
} else if (horizontal_input) {
    sprite_index = asset_get_index(plat_walk_sprite + self.color);
} else {
    sprite_index = asset_get_index(plat_stand_sprite + self.color);
}
