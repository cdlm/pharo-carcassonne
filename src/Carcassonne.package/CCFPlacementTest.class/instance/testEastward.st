tests
testEastward
	placement eastward: otherTile.
	
	tile should receive easternEdge.
	otherTile should receive westernEdge