/// script_introToOverworld()
// This script "wakes up" the player so they leave the intro dream and enter the overworld.

o_player.mode = "sleeping";
o_player.stopTimer = 240;
o_player.x = 200;
o_player.y = 192;
room_goto(rm_overworld);
