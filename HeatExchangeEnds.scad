
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

difference() {

difRing();
translate([0,0,-.5])
cylinder(h=14, r=12/2,$fn=100);

}



