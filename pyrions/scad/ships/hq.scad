// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("hq.blend.stl", convexity = 10);

		#modSlot( [0, 17, 0], [0, 0, 0], 1.5, 5, slack);
		
		#modSlot( [13, -15, 0], [0, 0, 0], 3, 5, slack);
		#modSlot( [-13, -15, 0], [0, 0, 0], 3, 5, slack);

		//poleslot,
		#modSlot( [0, 0, 0], [0, 0, 0], 3, 7.5, slack);
	}
}

load();
