// licensed under the Creative Commons - GNU GPL license.

use <../helpers/helpers.scad>

slack = 0.5;

module load() {
	difference()
	{
		import("fast.blend.stl", convexity = 10);
		
		modSlot( [0,-6, 3], [0,0,0], [3, 3, 6], slack);

		#modSlot( [0,0, -4], [0,0,0], [3, 3, 6], slack);

		#modSlot( [0, -16, -1], [0,0,0], [3, 6, 3], slack);
	}
}

load();
