tests
testMoreThanOneFarmer
	| tile1 tile2 tile3 tile4 placement deployment |
	tile1 := CCFBasicGame crfrTile rotateHalfturn.
	tile2 := CCFBasicGame cfcfCitiesTile.
	tile3 := CCFBasicGame frrfTile rotateClockwise.
	tile4 := CCFBasicGame frrfTile rotateCounterclockwise.

	placement := tile2 placement northward: tile1.
	placement should be isLegal.
	deployment := placement commit easternEdge deploy: CCFFollower new.
	deployment should be isLegal.
	deployment commit.
	
	placement := tile3 placement westward: tile1.
	placement should be isLegal.
	deployment := placement commit southernEdge deploy: CCFFollower new.
	deployment should be isLegal.
	deployment commit.
	
	placement := tile4 placement northward: tile3; westward: tile2.
	placement should be isLegal.
	placement commit