// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("hq.blend.stl", convexity = 10);
		
		//weapon/utils slots
		#modSlot( [0, 23, 0], [0, 0, 0], 1.5, 5, slack);

		#modSlot( [3.9, 12, 5], [0, 0, 0], 3, 5, slack);
		#modSlot( [-3.9, 12, 5], [0, 0, 0], 3, 5, slack);
		

		
		#modSlot( [15, 12, 5], [0, 0, 0], 1.5, 5, slack);
		#modSlot( [15, 7, 5], [0, 0, 0], 1.5, 5, slack);
		#modSlot( [15, 2, 6], [0, 0, 0], 1.5, 5, slack);

		
		#modSlot( [-15, 12, 5], [0, 0, 0], 1.5, 5, slack);
		#modSlot( [-15, 7, 5], [0, 0, 0], 1.5, 5, slack);
		#modSlot( [-15, 2, 6], [0, 0, 0], 1.5, 5, slack);

		//utilslots
		#modSlot( [0, -6.5, 5	], [0, 0, 0], 1.5, 5, slack);
		#modSlot( [3, -10.5, 5	], [0, 0, 0], 1.5, 5, slack);
		#modSlot( [-3, -10.5, 5	], [0, 0, 0], 1.5, 5, slack);

		//poleslot,
		#modSlot( [0, 6, 0], [0, 0, 0], 1.5, 9, slack);

		//#modSlot( [0, 0, 0], [0, 0, 0], 20, 2, slack);
	}
}

load();
