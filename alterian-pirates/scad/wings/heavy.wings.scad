// licensed under the Creative Commons - GNU GPL license.

use <../helpers/helpers.scad>

slack = -0.7;

module load() {
	difference() {	
		union() {
			import("heavy.wing.blend.stl", convexity = 10);
		
			#wingSlot([-12, -15, 5.5], [0,0,0], [4,6,4], slack);
			#wingSlot([12, -15, 5.5], [0,0,0], [4,6,4], slack);
		}
		
		#modSlot([-18.5, -14.65, 5.5], [0,-35,0], [3,3,3], -.5);
		#modSlot([18.5, -14.65, 5.5], [0,-35,0], [3,3,3], -.5);
	}
}

load();
