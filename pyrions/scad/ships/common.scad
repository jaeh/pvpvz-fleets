// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("common.blend.stl", convexity = 10);

		//poleslot,
		#modSlot( [0, 0, 0], [0, 0, 0], 1.5, 8, slack);
	}
}

load();
