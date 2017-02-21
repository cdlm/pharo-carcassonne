tests
testRuleBookPlacingTilesInvalid
	| tile1 tile2 placement |
	tile1 := CCFBasicGame cfffTile rotateHalfturn.
	tile2 := CCFBasicGame frrfTile rotateHalfturn.
	
	placement := tile1 placement.
	placement should be isLegal.
	placement commit.
	
	placement := tile2 placement northward: tile1.
	placement should not be isLegal