// licensed under the Creative Commons - GNU GPL license.
use <../helpers/helpers.scad>

slack = -0.3;

module load() {
	difference()
	{
		union(){
			import("fast.wing.blend.stl", convexity = 10);
			#wingSlot([-9, -8, 5	],[0,0,0], [7,5,1], slack);
			wingSlot([9, -8, 5], [0,0,0], [7,5,1], slack);
		}
	}
}

load();
