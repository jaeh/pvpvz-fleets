// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0.25;

module load() {
	difference()
	{
		import("common.blend.stl", convexity = 10);
		
		//weapon slot on the back
		modSlot( [0, -3, 8], [0, 0, 90], 1.5, 4, slack);
		
		//util slots on the back
		modSlot( [4, -11, 8], [0, 0, 90], 1.5, 4, slack);
		modSlot( [-4, -11, 8], [0, 0, 90], 1.5, 4, slack);

		//engineslot
		modSlot( [0, -19, 3.5], [0, 270, 90], 1.5, 4, slack);
		
		//pole slot
		modSlot( [0,0, 2], [0,0,0], 1.5, 5, slack);
	}
}

load();
