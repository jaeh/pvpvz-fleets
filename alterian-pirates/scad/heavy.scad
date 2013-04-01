// licensed under the Creative Commons - GNU GPL license.

use <helpers/helpers.scad>

shipOrModule = true;
slack = 0.15;

module load() {
	difference()
	{
		import("heavy.blend.stl", convexity = 10);
		
		modSlot( translate = [0, -13, 11], rotate = [0, 0, 90], size = [6, 6, 4], slack = slack, shipOrModule = shipOrModule);		

		wingSlot(translate = [-10, -11, 5], size = [7,5,1], slack = slack, shipOrModule = shipOrModule);
		wingSlot(translate = [10, -11, 5], size = [7,5,1], slack = slack, shipOrModule = shipOrModule);
		
		modSlot(translate = [4, -34, 10], size = [3,3,4], slack = slack, shipOrModule = shipOrModule);
		modSlot(translate = [-4, -34, 10], size = [3,3,4], slack = slack, shipOrModule = shipOrModule);
		modSlot(translate = [0, -38, 12], size = [3,3,4], slack = slack, shipOrModule = shipOrModule);

		engineSlot( translate = [2.5, -44, 3.5], rotate = [0, 270, 90], size = [3, 3, 4], slack = slack, shipOrModule = shipOrModule);
		engineSlot( translate = [-2.5, -44, 3.5], rotate = [0, 270, 90], size = [3, 3, 4], slack = slack, shipOrModule = shipOrModule);

		poleSlot( translate = [0,-15, 2.9], rotate = [0,0,0], size = [3, 3, 6], slack = slack, shipOrModule = shipOrModule);
	}
}

load();
