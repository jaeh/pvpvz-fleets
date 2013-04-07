// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("heavy.blend.stl", convexity = 10);
		
		//weapon/utils slots
		#modSlot( [0, 24, 0], [0, 0, 0], 1.5, 5, slack);
		#modSlot( [-3.5, 12, 0], [0, 0, 0], 1.5, 5, slack);
		#modSlot( [3.5, 12, 0], [0, 0, 0], 1.5, 5, slack);

		//#modSlot( [0, 12, 5], [0, 0, 0], 3, 5, slack);

		//poleslot,
		#modSlot( [0, 6, 0], [0, 0, 0], 1.5, 10.5, slack);
	}
}

load();
