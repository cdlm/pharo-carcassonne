tests
testWestward
	placement westward: otherTile.
	
	tile should receive westernEdge.
	otherTile should receive easternEdge