// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("common.blend.stl", convexity = 10);
		
		#modSlot( [0, 22, 0], [0, 0, 0], 1.5, 5, slack);

		//poleslot,
		#modSlot( [0, 6, 0], [0, 0, 0], 1.5, 11, slack);
	}
}

load();
