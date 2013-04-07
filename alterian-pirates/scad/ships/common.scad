// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("common.blend.stl", convexity = 10);
		
		//wpn slot below tip
		modSlot( [0,12,0], [0,0,0], 1.5, 5, slack);

		//wpn slots on the wings
		modSlot( [16.5, -7, 2.5], [0, 0, 90], 1.5, 4, slack);
		modSlot( [-16.5, -7, 2.5], [0, 0, 90], 1.5, 4, slack);

		//engineslot
		//modSlot( [0, -19, 3.5], [0, 270, 90], 1.5, 4, slack);
		
		//pole slot
		modSlot( [0,0, 2], [0,0,0], 1.5, 5, slack);
	}
}

load();
