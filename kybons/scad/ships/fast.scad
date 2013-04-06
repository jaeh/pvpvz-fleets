// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("fast.blend.stl", convexity = 10);
		
		//weapon/utils slots
		#modSlot( [0, 9.5, 5], [0, 0, 0], 1.5, 5, slack);	
		#modSlot( [0, -8.5, 5	], [0, 0, 0], 1.5, 5, slack);	

		//poleslot,
		#modSlot( [0, 5.5, 0], [0, 0, 0], 1.5, 9, slack);

		//#modSlot( [0, 0, 0], [0, 0, 0], 20, 2, slack);
	}
}

load();
