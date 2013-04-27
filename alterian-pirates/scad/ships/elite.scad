// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0.25;

module load() {
	difference()
	{
		import("elite.blend.stl", convexity = 10);

		//big frontal gun
		modSlot( [0, 14, 0], [0, 0, 90], 1.5, 6, slack);

		//pole slot
		modSlot([0, 0, 2.9], [0,0,0], 1.5, 8, slack);
	}
}

load();
