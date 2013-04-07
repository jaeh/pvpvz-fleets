// licensed under the Creative Commons - GNU GPL license.

use <../../helpers/helpers.scad>

module load() {
	union() {
		cube([1,60,1]);
	
		translate([2,0,0]){
			cube([1,60,1]);
		}
		translate([4,0,0]){
			cube([1,60,1]);
		}
		translate([6,0,0]){
			cube([1,60,1]);
		}
	}
}

load();

