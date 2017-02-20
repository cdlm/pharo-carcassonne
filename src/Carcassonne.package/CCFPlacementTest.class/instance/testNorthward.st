tests
testNorthward
	placement northward: otherTile.
	
	tile should receive northernEdge.
	otherTile should receive southernEdge