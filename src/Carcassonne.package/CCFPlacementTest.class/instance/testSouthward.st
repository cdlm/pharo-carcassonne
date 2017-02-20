tests
testSouthward
	placement southward: otherTile.
	
	tile should receive southernEdge.
	otherTile should receive northernEdge