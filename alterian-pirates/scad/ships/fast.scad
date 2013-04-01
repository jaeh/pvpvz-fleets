// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0.25;

module load() {
	difference()
	{
		import("fast.blend.stl", convexity = 10);
		
		//weaponslot on top
		modSlot( [0,-6, 4.5], [0,0,0], 1.5, 3, slack);
		
		//engineslot
		modSlot( [0, -16, -0], [90,0, 0], 3, 3, slack);
		
		//poleslot
		modSlot( [0,0, -4], [0,0,0], 1.5, 6, slack);

	}
}

load();
