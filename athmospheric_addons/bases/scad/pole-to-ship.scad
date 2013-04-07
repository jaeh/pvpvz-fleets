// licensed under the Creative Commons - GNU GPL license.

use <../../helpers/helpers.scad>

slack = [0, 0];


sizes = [[1.6, 1.6], [1.5, 1.5], [1.4, 1.4], [1.3, 1.3]];

module load() {
	for(j = [0:1]) 
	{
		translate([25 * j, 0, 0])
		{
			for (i = [0:3]) 
			{
				translate([5 * i, 0,0]) 
				{
					cylinder( 9, sizes[i][0] + slack, sizes[i][1] + slack, $fn = 100);
			
					translate([0, 5, 0]){
						cylinder( 9, sizes[i][0] + slack, sizes[i][1] + slack, $fn = 100);
					}
				}	
			}
		}
	}
}

load();

