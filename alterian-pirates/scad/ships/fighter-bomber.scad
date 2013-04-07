// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("fighter-bomber.blend.stl", convexity = 10);

		//pole slot
		modSlot( [0,0,0], [0,0,0], 1.5, 5, slack);
	}
}

load();
