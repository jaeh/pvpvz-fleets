// licensed under the Creative Commons - GNU GPL license.
use <../helpers/helpers.scad>

slack = -0.5;

module load() {
	difference()
	{
		union(){
		
		import("common.wing.blend.stl", convexity = 10);
		wingSlot(translate = [-10, -8, 5], size = [7,5,1], slack = slack, shipOrModule = shipOrModule);
		wingSlot(translate = [10, -8, 5], size = [7,5,1], slack = slack, shipOrModule = shipOrModule);
		}
	}
}

load();
