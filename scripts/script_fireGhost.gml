/// script_fireGhost(can_trigger_second_ghost)
can_trigger_second_ghost = argument0;

if (self.ghostCooldown <= 0) {
    var ghost = instance_create(x+8*self.image_xscale, y, o_ghost);
    ghost.image_xscale = self.image_xscale;
    
    if (!self.horizontal_input) {
        self.xvel = self.image_xscale * -2;
        if (self.on_ground) self.xvel /= 2;
    } else {
        ghost.speedup = true;
    }

    self.ghostAnimationLag = 15;
    if (can_trigger_second_ghost
            and floor(random(3)) == 0) {    
        self.ghostCooldown = 10;
    }
}
