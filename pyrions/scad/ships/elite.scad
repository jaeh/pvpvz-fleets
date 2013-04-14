// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("elite.blend.stl", convexity = 10);
		
		#modSlot( [18, 0, 0], [0, 0, 0], 1.5, 5, slack);
		#modSlot( [-18, 0, 0], [0, 0, 0], 1.5, 5, slack);

		//poleslot,
		#modSlot( [0, 0, 0], [0, 0, 0], 1.5, 8, slack);
	}
}

load();
