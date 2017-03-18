if (self.on_ground || place_meeting(x, y, o_water4)) {
    if (self.on_ground) {
        self.yvel = self.jump_yvel;
        audio_play_sound(snd_jump, 1, false);
    }
    else if (place_meeting(x, y, o_water4)) {
        self.yvel = self.jump_yvel+2;
    }
    self.on_ground = false;
}
