/// script_playerSleepingStep() wake up!!
sprite_index = s_playerSleep_grey;
stopTimer--;
if (stopTimer <= 0) {
    mode = "platformer";
    yvel = -3;
    audio_play_sound(snd_glitch1, 1, false);
}
