

module modSlot(translate, rotate, size, slack, shipOrModule) {
	
		realSlack = shipOrModule == false ? slack : -slack;

		newSize = [size[0] + realSlack, size[1] + realSlack, size[2] + realSlack];

	translate(translate)
	rotate(rotate)
		cube(size=newSize, center= true);
}

module wingSlot(translate, rotate, size, slack, shipOrModule) {
	modSlot(translate, rotate, size, slack, shipOrModule);
}

module engineSlot(translate, rotate, size, slack, shipOrModule) {
	modSlot(translate, rotate, size, slack, shipOrModule);
}

module poleSlot(translate, rotate, size, slack, shipOrModule) {
	modSlot(translate, rotate, size, slack, shipOrModule);
}