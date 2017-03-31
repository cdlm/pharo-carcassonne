tests - placing tiles
testPlacingTilesCityContinued
	| tile1 tile2 placement |
	tile1 := CCFBasicGame fcfcTile.
	tile2 := CCFBasicGame crrfTile rotateCounterclockwise.
	
	placement := tile2 placement westward: tile1.
	placement should be isLegal.
	placement commit