
module baseunit(){
	difference(){
		cube([128,126,74.09],center=true);
		translate([-60.5,-65,6]){
			cube([121,130,26.71]);
			}
		}
	}

module CondCut(){
difference(){
	baseunit();
	translate([-51.25,-65,-32.21]){
		cube([102.5,130,32.88]);
			}
	}
}

difference(){
	CondCut();
	cylinder(h=75, r=116/2, center=true);
	}

translate([-73,57,-37.045]){
	cube([9,6,74.09]);
}

translate([64,57,-37.045]){
	cube([9,6,74.09]);
}
