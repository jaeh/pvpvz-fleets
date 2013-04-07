// licensed under the Creative Commons - GNU GPL license.
use <../../../helpers/helpers.scad>

slack = 0;

module load() {
	difference()
	{
		import("fighter-interceptor.blend.stl", convexity = 10);

		//pole slot
		modSlot( [0,0,0], [0,0,0], 1.5, 4.5, slack);
	}
}

load();
