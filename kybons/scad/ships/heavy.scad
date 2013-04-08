// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("heavy.blend.stl", convexity = 10);
		
		//weapon/utils slots
		#modSlot( [0, 4, 0], [0, 0, 0], 1.5, 7, slack);

		//poleslot,
		#modSlot( [0, 0, 0], [0, 0, 0], 1.5, 8, slack);
	}
}

load();
