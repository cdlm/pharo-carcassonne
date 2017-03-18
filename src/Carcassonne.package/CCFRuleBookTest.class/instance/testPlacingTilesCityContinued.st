tests - placing tiles
testPlacingTilesCityContinued
	| tile1 tile2 placement |
	tile1 := CCFBasicGame cfcfTile rotateCounterclockwise.
	tile2 := CCFBasicGame rrfcTile rotateHalfturn.
	
	placement := tile2 placement westward: tile1.
	placement should be isLegal.
	placement commit