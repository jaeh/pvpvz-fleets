// licensed under the Creative Commons - GNU GPL license.

use <helpers/helpers.scad>

slack = 0.3;

module load() {
	difference()
	{
		import("heavy.blend.stl", convexity = 10);
		
		modSlot( [0, -13, 9], [0, 0, 90], [6, 6, 4], slack);		

		wingSlot([-10, -15, 6], [0,0,0], [6,6,4], slack);
		wingSlot([10, -15, 6], [0,0,0], [6,6,4], slack);
		
		modSlot([3.5, -34, 8], [0,0,0], [3,3,4], slack);
		modSlot([-3.5, -34, 8], [0,0,0], [3,3,4], slack);

		modSlot([0, -38, 12], [0,0,0], [3,3,4], slack);

		engineSlot( [2.5, -43, 3.5], [0, 270, 90], [3, 3, 4], slack);
		engineSlot( [-2.5, -43, 3.5], [0, 270, 90], [3, 3, 4], slack);

		poleSlot( [0,-15, 2.9], [0,0,0], [3, 3, 6], slack);
	}
}

load();
