// licensed under the Creative Commons - GNU GPL license.

use <../../helpers/helpers.scad>

slack = 0;

sizes = [[1.6,2], [2,1.6], [1.8, 1.4], [2, 1]];

module load() {

	for (i = [0:3]) {
		translate([32 * i, 0, 0]) {
			difference()
			{	
				cylinder( 5, 15, 15, $fn = 20);
				translate([0,0,2])
				{
					cylinder( 4, sizes[i][0], sizes[i][1], $fn = 100);		
				}
			}
		}
	}
	
}

load();
