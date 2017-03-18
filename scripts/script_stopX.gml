if (self.xvel > 0){ 
    self.xvel -= self.xacc;
    if (self.xvel < 0) self.xvel = 0;
} else if (self.xvel < 0) {
    self.xvel += self.xacc;
    if (self.xvel > 0) self.xvel = 0;
}
