if (self.ghostCooldown > 0) {
    self.ghostCooldown--;
    if (self.ghostCooldown <= 0)
        script_fireGhost(false);
}

if (self.ghostAnimationLag > 0)
    self.ghostAnimationLag--;
