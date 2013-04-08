// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0.25;

module load() {
	difference()
	{
		import("heavy.blend.stl", convexity = 10);
		
		modSlot( [0, 10, 1], [0,0,0],  1.5, 3, slack);

		//poleslot
		modSlot( [0,0, 2.9], [0,0,0],  1.5, 6, slack);
	}
}

load();
