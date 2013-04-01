module modSlotCube(translate, rotate, size, slack) {

		newSize = [size[0] + slack, size[1] + slack, size[2] + slack];

	translate(translate)
	rotate(rotate)
		cube(size=newSize, center= true);
}

module modSlot(translate, rotate, r, h, slack) {


	newH = h + slack;
	newR = r + slack;
	
	translate(translate)
	rotate(rotate)
		cylinder(h=newH, r= newR, $fn = 10 * newR, center= true);
}
