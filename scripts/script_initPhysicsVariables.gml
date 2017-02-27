/// script_initPhysicsVariables() init physics variables

// movement variables
self.xpos = x;
self.ypos = y;
self.xvel = 0;
self.yvel = 0;

self.xacc = 0.1;
self.terminal_xvel = 3;

// platformer specific variables
self.grav = 0.5;
self.terminal_yvel = 4;
self.jump_yvel = -5;
self.on_ground = false;
self.was_on_ground = false;

// collision bounds
self.tb = 8;
self.lb = 8;
self.rb = 8;
self.bb = 8;

self.other_solid0 = noone;
self.other_solid1 = noone;
self.other_solid2 = noone;
self.other_solid3 = noone;
self.other_solid4 = noone;
