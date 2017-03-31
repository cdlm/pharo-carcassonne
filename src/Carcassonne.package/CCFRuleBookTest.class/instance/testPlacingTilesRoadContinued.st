tests - placing tiles
testPlacingTilesRoadContinued
	| tile1 tile2 placement |
	tile1 := CCFBasicGame crfrTile.
	tile2 := CCFBasicGame crrrTile rotateClockwise.
	
	placement := tile2 placement westward: tile1.
	placement should be isLegal.
	placement commit