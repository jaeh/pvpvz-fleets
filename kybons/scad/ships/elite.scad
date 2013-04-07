// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("elite.blend.stl", convexity = 10);
		
		//weapon/utils slots
		#modSlot( [0, 23, 0], [0, 0, 0], 1.5, 4, slack);

		#modSlot( [5.5, 12, 0], [0, 0, 0], 1.5, 9, slack);
		#modSlot( [-5.5, 12, 0], [0, 0, 0], 1.5, 9, slack);

		//#modSlot( [3.9, 12, 6], [0, 0, 0], 3, 5, slack);
		//#modSlot( [-3.9, 12, 6], [0, 0, 0], 3, 5, slack);

		//utilslots
		//#modSlot( [0, -6.5, 6	], [0, 0, 0], 1.5, 4, slack);
		//#modSlot( [3, -10.5, 6], [0, 0, 0], 1.5, 4, slack);
		//#modSlot( [-3, -10.5, 6], [0, 0, 0], 1.5, 4, slack);

		//poleslot,
		#modSlot( [0, 7, 0], [0, 0, 0], 1.5, 10, slack);
	}
}

load();
