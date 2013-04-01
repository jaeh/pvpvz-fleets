// licensed under the Creative Commons - GNU GPL license.

use <../../../helpers/helpers.scad>

shipOrModule = true;
slack = 0.15;

module load() {
	difference()
	{
		import("common.blend.stl", convexity = 10);
		

		#modSlot( [0, -0.5, 0], [0, 0, 0], 1.5, 7, slack);	


		//#modSlot( [0, -0.5, 0], [0, 0, 0], 1.5, 7, slack);
//		#modSlot( [0, -0.5, 0], [0, 0, 0], 1.5, 7, slack);		
//	
//		//poleslot		
//		#modSlot( [0, -0.5, 0], [0, 0, 0], 1.5, 7, slack);	

	}
}

load();
