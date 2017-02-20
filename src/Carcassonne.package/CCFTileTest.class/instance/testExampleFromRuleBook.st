tests
testExampleFromRuleBook
	| tile1 tile2 tile3 tile4 placement |
	tile1 := CCFBasicGame rfrcTile rotateClockwise.
	tile2 := CCFBasicGame fcfcFieldTile rotateClockwise.
	tile3 := CCFBasicGame frrfTile rotateClockwise.
	tile4 := CCFBasicGame frrfTile rotateCounterclockwise.
	
	placement := tile1 placement.
	placement should be isLegal.
	
	placement := tile2 placement northward: tile1.
	placement should be isLegal.
	placement commit.
	
	placement := tile3 placement westward: tile1.
	placement should be isLegal.
	placement commit.
	
	placement := tile4 placement northward: tile3; westward: tile2.
	placement should be isLegal.
	placement commit