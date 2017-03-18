tests - placing tiles
testPlacingTilesInvalid
	| tile1 tile2 placement |
	tile1 := CCFBasicGame cfffTile rotateHalfturn.
	tile2 := CCFBasicGame frrfTile rotateHalfturn.
	
	placement := tile2 placement northward: tile1.
	placement should not be isLegal