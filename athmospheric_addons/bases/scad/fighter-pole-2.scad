// licensed under the Creative Commons - GNU GPL license.

use <../../helpers/helpers.scad>

sizes = [1.2, 1.4, 1.6, 1.8, 2, 3];
slack = 0;

module load() {
	union() {
		for (i = [0:5]) 
		{
			translate([3 * i,0,0])
			{
				cube([sizes[i] + slack,60, sizes[i] + slack]);
			}
		}
	}
}

load();

