// licensed under the Creative Commons - GNU GPL license.

use <../../helpers/helpers.scad>

slack = 0;



sizes = [[2,1.6], [2, 1.4], [1.8, 1.4], [2, 1]];

module load() {
	for (i = [0:3]) {
		translate([5 * i, 0,0]) 
		{
			cylinder( 5.5, sizes[i][0], sizes[i][1], $fn = 100);
			
			translate([0, 5, 0]){
				cylinder( 5.5, sizes[i][0], sizes[i][1], $fn = 100);
			}	
		}
	}
}

load();

