// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0.25;

module load() {
	difference()
	{
		import("elite.blend.stl", convexity = 10);
		
		//big frontal gun
		modSlot( [0, 7, 0], [0, 0, 90], 1.5, 8, slack);
		
		//module slots on the back
		//modSlot([3.5, -29, 12], [0,0,0], 1.5, 4, slack);
		//modSlot([-3.5, -29, 12], [0,0,0], 1.5, 4, slack);

		//wing weapons
		modSlot([17, -28, 4], [0,0,0], 1.5, 4, slack);
		modSlot([-17, -28, 4], [0,0,0], 1.5, 4, slack);

		//engine slots
		//modSlot([3, -45, 4], [0, 270, 90], 1.5, 4, slack);
		//modSlot([-3, -45, 4], [0, 270, 90], 1.5, 4, slack);
		
		//pole slot
		modSlot([0,-15, 2.9], [0,0,0], 3, 10, slack);
	}
}

load();
