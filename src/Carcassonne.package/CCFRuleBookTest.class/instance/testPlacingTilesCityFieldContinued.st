tests - placing tiles
testPlacingTilesCityFieldContinued
	| tile1 tile2 tile3 tile4 placement |
	tile1 := CCFBasicGame ccccPennantTile.
	tile2 := CCFBasicGame cfrrTile.
	tile3 := CCFBasicGame rfrfTile rotateClockwise.
	tile4 := CCFBasicGame ccffTile.
	
	placement := tile1 placement.
	placement should be isLegal.
	placement commit.
	
	placement := tile2 placement northward: tile1.
	placement should be isLegal.
	placement commit.

	placement := tile3 placement westward: tile2.
	placement should be isLegal.
	placement commit.

	placement := tile4 placement westward: tile1; southward: tile3.
	placement should be isLegal.
	placement commit
