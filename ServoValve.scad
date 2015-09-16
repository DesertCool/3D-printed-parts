module ServoBracket() {
difference() {
translate([0,-4.7,0])
cube(size=[9.8,32.36,14.21]);
translate([-1,0,3])
cube(size=[11,23.25,12.21]);
}
}
module ValveBracket() {
difference() {
translate([0,5.7,-4])
cube(size=[11.3,16.50,12.495]);
translate([-.3,5.5,3])
cube(size=[7.3,17,6]);
}
}

translate([-33.65,0,2])
ServoBracket();
translate([0,0,4.695])
ValveBracket();

translate([-35,-5.5,0])
cube(size=[50,34,2]);