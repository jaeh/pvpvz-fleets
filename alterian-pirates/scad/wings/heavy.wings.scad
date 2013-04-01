// licensed under the Creative Commons - GNU GPL license.

use <../helpers/helpers.scad>

slack = 0.2;

module load() {
union() {
		
		import("heavy.wing.blend.stl", convexity = 10);
		//import("../heavy.blend.stl", convexity = 10);
		
		wingSlot([-10, -11, 5], [0, 0, 0],[7,5,1], slack);
		wingSlot([10, -11, 5], [0, 0, 0],[7,5,1], slack);
	}
}

load();