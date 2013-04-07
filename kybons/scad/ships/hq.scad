// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("hq.blend.stl", convexity = 10);
		
		//weapon/utils slots
		#modSlot( [5, 5, 0], [0, 0, 0], 1.5, 7, slack);		
		#modSlot( [-5, 5, 0	], [0, 0, 0], 1.5, 7, slack);

		#modSlot( [0, 17, 1], [0, 0, 0], 1.5, 4.5, slack);

		//poleslot,
		#modSlot( [0, 0, 0], [0, 0, 0], 1.5, 11, slack);
	}
}

load();
