/// script_lightMeUp3(object)
var object = argument0;

var base = 16;

if (timer < 10) {
    // default
    base = 16;
} else if (timer < 20) { 
    base = 18;
} else if (timer < 30) {
    base = 20;
} else if (timer < 40) {
    base = 18;
}


script_drawSurroundingRect3(object, base, c_black, 0.2);
script_drawSurroundingRect3(object, base+8, c_black, 0.2);
script_drawSurroundingRect3(object, base+16, c_black, 0.4);
script_drawSurroundingRect3(object, base+24, c_black, 0.4);
script_drawSurroundingRect3(object, base+32, c_black, 0.2);
