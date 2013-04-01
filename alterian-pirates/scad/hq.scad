// licensed under the Creative Commons - GNU GPL license.
use <helpers/helpers.scad>

shipOrModule = true;
slack = 0.1;

module load() {
	difference()
	{
		import("hq.blend.stl", convexity = 10);

		modSlot( translate = [0, 3, 7], rotate = [0, 0, 90], size = [6, 6, 4], slack = slack, shipOrModule = shipOrModule);
		modSlot( translate = [9.5, -5, 7], rotate = [0, 0, 90], size = [3, 3, 4], slack = slack, shipOrModule = shipOrModule);
		modSlot( translate = [-9.5, -5, 7], rotate = [0, 0, 90], size = [3, 3, 4], slack = slack, shipOrModule = shipOrModule);

		wing(translate = [-12, -11, 5], size = [7,5,1], slack = slack, shipOrModule = shipOrModule);
		wing(translate = [12, -11, 5], size = [7,5,1], slack = slack, shipOrModule = shipOrModule);

		modSlot(translate = [9, -28.5, 6], size = [6,6,4], slack = slack, shipOrModule = shipOrModule);
		modSlot(translate = [-9, -28.5, 6], size = [6,6,4], slack = slack, shipOrModule = shipOrModule);

		modSlot(translate = [4, -28, 12], size = [3,3,4], slack = slack, shipOrModule = shipOrModule);
		modSlot(translate = [-4, -28, 12], size = [3,3,4], slack = slack, shipOrModule = shipOrModule);

		modSlot(translate = [0, -33, 12], size = [3,3,4], slack = slack, shipOrModule = shipOrModule);

		modSlot( translate = [3, -45, 4], rotate = [0, 270, 90], size = [3, 3, 4], slack = slack, shipOrModule = shipOrModule);
		modSlot( translate = [-3, -45, 4], rotate = [0, 270, 90], size = [3, 3, 4], slack = slack, shipOrModule = shipOrModule);

		modSlot( translate = [0,-15, 2.9], rotate = [0,0,0], size = [3, 3, 6], slack = slack, shipOrModule = shipOrModule);
	}
}

load();
