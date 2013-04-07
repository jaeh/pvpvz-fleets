// licensed under the Creative Commons - GNU GPL license.

use <../../helpers/helpers.scad>

slack = 0;


sizes = [[2,1.6], [1.6, 2], [1.4, 1.8], [1, 2]];

module load() {
	rotate([93, 45, 0])
	{
		for (i = [0:3]) {
			translate([10 * i, 10 * i, 0]) {
				difference()
				{	
					//poleslot
					cylinder( 53, 5, 2.8, $fn = 4);

					cylinder( 6, sizes[i][0], sizes[i][1], $fn = 100);
				
					translate([0, 0, 42]) 
					{		
						cylinder( 12, sizes[i][0], sizes[i][1], $fn = 100);
					}
				}
			}
		}
	}
}

load();
