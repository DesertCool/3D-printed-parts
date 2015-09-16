
module Gasketring() {

rotate_extrude(convexity = 10, $fn = 100)
translate([65/2, 12.72/2, 0])
circle(r = 4.76/2, $fn = 100);
}

module difRing() {
difference() {
cylinder(h=12.72,r=64.78/2,$fn=200);
Gasketring();
}
}

module coolantPort() {
difference() {

difRing();
translate([0,0,-.5])
cylinder(h=14, r=12/2,$fn=100);

}
}

module R134Lines1(x,y,z) {

difference() {

coolantPort();

translate([x,y,z])
cylinder(h=14, r=6.37/2,$fn=100);
}
}

module R134Lines2(x,y,z) {

difference() {

R134Lines1(19.74,0,-.5);
translate([x,y,z])
cylinder(h=14, r=6.37/2,$fn=100);
}
}

//R134Lines(19.74,0,-.5);


R134Lines2(21.45,-18.71,-.5);

