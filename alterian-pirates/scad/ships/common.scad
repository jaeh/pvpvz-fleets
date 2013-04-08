// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("common.blend.stl", convexity = 10);
		
		//wpn slot below tip
		modSlot( [0,14,0], [0,0,0], 1.5, 5, slack);

		//pole slot
		modSlot( [0,0, 2], [0,0,0], 1.5, 5, slack);
	}
}

load();
