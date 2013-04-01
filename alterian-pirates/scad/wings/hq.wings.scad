// licensed under the Creative Commons - GNU GPL license.
use <../helpers/helpers.scad>

slack = -0.5;

module load() {
	difference()
	{
		union() {
			import("hq.wing.blend.stl", convexity = 10);

		
			modSlot([9, -28.5, 6], [0,0,0], [6,6,4], slack);
			modSlot([-9, -28.5, 6], [0,0,0], [6,6,4], slack);
		}

		modSlot([22, -28, 3], [0,0,0], [3,3,4], slack);
		modSlot([-22, -28, 3], [0,0,0], [3,3,4], slack);

	}
}

load();
