// licensed under the Creative Commons - GNU GPL license.

use <../../helpers/helpers.scad>

slack = 0;

sizes = [[1.6,2], [2,1.6], [1.8, 1.4], [2, 1]];

module load() {

	for (i = [0:3]) {
		translate([17 * i, 17 * i, 0]) {
			difference()
			{	
				cylinder( 5, 15, 5, $fn = 4);

				cylinder( 6, sizes[i][0], sizes[i][1], $fn = 100);		
			}
		}
	}
	
}

load();
