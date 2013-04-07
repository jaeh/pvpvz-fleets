// licensed under the Creative Commons - GNU GPL license.

use <../../helpers/helpers.scad>

slack = 0;

module load() {
	cylinder( 6, 1.6, 1.6, $fn = 100);

	translate([5,0,0]) 
	{
		cylinder( 6, 1.7, 1.6, $fn = 100);
	}

	translate([10,0,0]) 
	{
		cylinder( 6, 2, 1.6, $fn = 100);
	}
	translate([15,0,0]) 
	{
		cylinder( 6, 1.6, 1.4, $fn = 100);
	}
	translate([20,0,0]) 
	{
		cylinder( 6, 1.6, 1.3, $fn = 100);
	}
}

load();
