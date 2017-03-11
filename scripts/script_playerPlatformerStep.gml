/// script_playerPlatformerStep() call other platformer step scripts

script_playerPlatformerInput();
script_playerGhostCooldown();
if (self.on_ground)
    xacc = 0.5;
else xacc = 0.1;
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
