// licensed under the Creative Commons - GNU GPL license.
use <../helpers/helpers.scad>

slack = 0.1;

module load() {
	difference()
	{
		import("hq.blend.stl", convexity = 10);

		//frontal big gun
		modSlot( [0, 3, 7], [0, 0, 90], [6, 6, 4], slack);
		
		//small front guns
		modSlot( [9.5, -5, 7], [0, 0, 90], [3, 3, 4], slack);
		modSlot( [-9.5, -5, 7], [0, 0, 90], [3, 3, 4], slack);	
		
		// module slots on the back
		modSlot([4, -28, 12], [0,0,0], [3,3,4], slack);
		modSlot([-4, -28, 12], [0,0,0], [3,3,4], slack);
		modSlot([0, -33, 12], [0,0,0], [3,3,4], slack);

		//wing weapon slots
		modSlot([24, -26, 5], [0,0,0], [3,3,4], slack);
		modSlot([-24, -26, 5], [0,0,0], [3,3,4], slack);

		//engine slots
		modSlot([3, -45, 4], [0, 270, 90], [3, 3, 4], slack);
		modSlot([-3, -45, 4], [0, 270, 90],[3, 3, 4], slack);
		
		//pole slot
		modSlot([0,-15, 2.9], [0,0,0], [6, 6, 10], slack);
	}
}

load();
