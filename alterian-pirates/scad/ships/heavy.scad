// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0.25;

module load() {
	difference()
	{
		import("heavy.blend.stl", convexity = 10);
		
		modSlot( [0,5, 1], [0,0,0],  1.5, 3, slack);

		//main weapon on top
		//modSlot( [0, -12, 10], [0, 0, 90], 3, 4, slack);


		//util slots on top
		//modSlot([3.5, -34, 8], [0,0,0], 1.5, 4, slack);
//		modSlot([-3.5, -34, 8], [0,0,0], 1.5, 4, slack);
//		modSlot([0, -38, 8], [0,0,0], 1.5, 4, slack);

		//engine slots
//		modSlot( [2.5, -43, 3.5], [0, 270, 90], 1.5,4, slack);
//		modSlot( [-2.5, -43, 3.5], [0, 270, 90], 1.5,4, slack);

		//poleslot
		modSlot( [0,-5, 2.9], [0,0,0],  1.5, 6, slack);
	}
}

load();
