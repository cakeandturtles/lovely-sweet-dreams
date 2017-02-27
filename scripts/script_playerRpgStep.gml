/// script_playerRpgStep() 

script_playerRpgInput();

// move and collide with solids
lb = rpg_lb;
tb = rpg_tb;
rb = rpg_rb;
bb = rpg_bb;

script_horizontalCollisions(o_solid);
script_horizontalCollisions(o_npc);
// move x position!!!
x += xvel;

script_verticalCollisions(o_solid);
script_verticalCollisions(o_npc);
// move y position!!
y += yvel;


script_updatePlayerSpriteRpg();
