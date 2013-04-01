// licensed under the Creative Commons - GNU GPL license.
use <../helpers/helpers.scad>

slack = -0.1;

module load() {
	difference()
	{
		union(){
			import("fast.wing.blend.stl", convexity = 10);
			wingSlot([-10, -8, 5	],[0,0,0], [7,5,1], slack);
			wingSlot([10, -8, 5], [0,0,0], [7,5,1],slack);
		}
		modSlot([0, -8,7], [0,0,0], [3,3,4], slack);
		
		engineSlot( [0, -19, 3.5], [0, 270, 90], [5, 5, 4], slack);
		
		poleSlot( [0,0, 2.9], [0,0,0], [3, 3, 6], slack);
	}
}

load();
