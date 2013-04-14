// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0.25;

module load() {
	difference()
	{
		import("hq.blend.stl", convexity = 10);

		//frontal big gun
		modSlot( [0, 10, 0], [0, 0, 90], 1.5, 6, slack);

		//pole slot
		modSlot([0,0, 2.9], [0,0,0], 1.5, 7, slack);
	}
}

load();
