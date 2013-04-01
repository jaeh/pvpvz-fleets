// licensed under the Creative Commons - GNU GPL license.

use <../helpers/helpers.scad>

slack = 0.5;

module load() {
	difference()
	{
		import("elite.blend.stl", convexity = 10);
		
		//big frontal gun
		modSlot( [0, 3, 7], [0, 0, 90], [6, 6, 4], slack);
		
		//module slots on the back
		modSlot([3.5, -29, 12], [0,0,0], [3,3,4], slack);
		modSlot([-3.5, -29, 12], [0,0,0], [3,3,4], slack);

		//wing weapons
		modSlot([17, -28, 4], [0,0,0], [3,3,4], slack);
		modSlot([-17, -28, 4], [0,0,0], [3,3,4], slack);

		//engine slots
		modSlot([3, -45, 4], [0, 270, 90], [3, 3, 4], slack);
		modSlot([-3, -45, 4], [0, 270, 90],[3, 3, 4], slack);
		
		//pole slot
		modSlot([0,-15, 2.9], [0,0,0], [6, 6, 10], slack);
	}
}

load();