tests
testRuleBookPlacingTilesRoadContinued
	| tile1 tile2 placement |
	tile1 := CCFBasicGame rfrcTile rotateCounterclockwise.
	tile2 := CCFBasicGame rrrcTile.
	
	placement := tile1 placement.
	placement should be isLegal.
	placement commit.
	
	placement := tile2 placement westward: tile1.
	placement should be isLegal.
	placement commit