// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("fast.blend.stl", convexity = 10);
		
		//weaponslot on top
		#modSlot( [11, -2, 1], [0,0,0], 1.5, 2.9, slack);
		#modSlot( [-11, -2, 1], [0,0,0], 1.5, 2.9, slack);
		
		//engineslot
		//modSlot( [0, -16, -0], [90,0, 0], 3, 3, slack);
		
		//poleslot
		modSlot( [0,0, -4], [0,0,0], 1.5, 6, slack);

	}
}

load();
