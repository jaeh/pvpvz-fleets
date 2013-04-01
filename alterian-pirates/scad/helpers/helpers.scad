

module modSlot(translate, rotate, size, slack) {

		newSize = [size[0] + slack, size[1] + slack, size[2] + slack];

	translate(translate)
	rotate(rotate)
		cube(size=newSize, center= true);
}

module wingSlot(translate, rotate, size, slack) {
	modSlot(translate, rotate, size, slack);
}

module engineSlot(translate, rotate, size, slack) {
	modSlot(translate, rotate, size, slack);
}

module poleSlot(translate, rotate, size, slack) {
	modSlot(translate, rotate, size, slack);
}
