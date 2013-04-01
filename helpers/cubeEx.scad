// my improved version of the openSCAD cube module 
// size works like the first parameter of the cube primitive, it's a 3 dim vector that contains the sidelengths of the "cube" ;) 
// center is also a 3 dim vector so you can specify the centering for each axis individually, This is normaly either -0.5, 0 (equal to center = true), or 0.5 (equal to center = false) but any value is possible. 
// offset specifies an absolute offset in mm from the position that would result from just the center parameter 
module cubeEx(size=[1,1,1], center=[0,0,0], offset=[0,0,0], childCenters, childOffsets) { 	
	translate([center[0]*size[0]+offset[0], center[1]*size[1]+offset[1], center[2]*size[2]+offset[2]]) 	
	difference() 	{ 		
			cube(size, center = true); 		
		
			for (i = [0:$children-1]) 			
				translate([childCenters[i][0]*size[0]+childOffsets[i][0], childCenters[i][1]*size[1]+childOffsets[i][1], childCenters[i][2]*size[2]+childOffsets[i][2]]) 
		child(i);
	}
}


//cubeEx(size=[35,19,11], center=[0, 0, 0], offsets=[0,0,0], childCenters=[[.5, 0, 0]], childOffsets=[[-4,0,0]]) {
//	cylinder(r=1, h=30, center=true);
//}

