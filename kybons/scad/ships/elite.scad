// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("elite.blend.stl", convexity = 10);
		
		//weapon/utils slots
		#modSlot( [0, 16, 0], [0, 0, 0], 1.5, 4, slack);

		#modSlot( [4, 5, 0], [0, 0, 0], 1.5, 9, slack);
		#modSlot( [-4, 5, 0], [0, 0, 0], 1.5, 9, slack);

		//poleslot,
		#modSlot( [0, 0, 0], [0, 0, 0], 1.5, 10, slack);
	}
}

load();
