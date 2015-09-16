
compR = 63.5;
halfcomp = 63.5;// /2
holderDeckH = 22.71;//22.71;
//translate([0,0,16])

module compHolder() {

difference() {
cube(size=[halfcomp/2,compR+25,16],center = true);
translate([holderDeckH,0,-9])
cylinder(h=20,r=compR/2,$fn=100);
}
}

translate([0,0,17])
compHolder();

translate([-18,0,6.5])
cube(size=[6,120,51],center = true);//back wall



module mountHole() {
translate([0,32.54,-22])

cylinder(h=10,r=3.6/2,$fn=100);

translate([0,-32.54,-22])

cylinder(h=10,r=3.6/2,$fn=100);

translate([56.54,0,-22])

cylinder(h=10,r=3.6/2,$fn=100);
}

difference() {
translate([25,0,-17])
cube(size=[80,80,4],center = true);//platform

mountHole();
}