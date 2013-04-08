// licensed under the Creative Commons - GNU GPL license.

use <../../helpers/helpers.scad>

slack = 0;

sizes = [[1.6, 1.2], [1.2, 1.6], [1, 1.6], [1.6, 1]];

module load() {
	for (i = [0:3]) {
		translate([8 * i, 0, 0]) {
			difference()
			{	
				cube( [10, 10, 5], true);

				translate([0,0,-1.5])
				{
					#cylinder( 10, sizes[i][0], sizes[i][1], $fn = 10);		
				}
			}
		}
	}
}

load();
