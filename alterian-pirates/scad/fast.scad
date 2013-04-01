// licensed under the Creative Commons - GNU GPL license.

use <helpers/helpers.scad>

shipOrModule = true;
slack = 0.15;

module load() {
	difference()
	{
		import("fast.blend.stl", convexity = 10);
		
		wingSlot(translate = [-10, -8, 5], size = [7,5,1], slack = slack, shipOrModule = shipOrModule);
		wingSlot(translate = [10, -8, 5], size = [7,5,1], slack = slack, shipOrModule = shipOrModule);
		
		modSlot(translate = [0, -8,7], size = [3,3,4], slack = slack, shipOrModule = shipOrModule);
		
		engineSlot( translate = [0, -19, 3.5], rotate = [0, 270, 90], size = [5, 5, 4], slack = slack, shipOrModule = shipOrModule);
		
		poleSlot( translate = [0,0, 2.9], rotate = [0,0,0], size = [3, 3, 6], slack = slack, shipOrModule = shipOrModule);
	}
}

load();
