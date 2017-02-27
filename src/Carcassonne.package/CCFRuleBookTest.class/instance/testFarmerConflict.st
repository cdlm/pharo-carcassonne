tests - deploying followers
testFarmerConflict
	| tile1 existingFarmer tile2 tile3 placement follower |
	tile1 := CCFBasicGame ccrrPennantTile rotateCounterclockwise.
	existingFarmer := CCFFollower new.
	(tile1 placement commit northernEdge left deploy: existingFarmer) commit.
	
	tile2 := CCFBasicGame ffrfCloisterTile rotateClockwise.
	tile2 placement westward: tile1; commit.
	tile3 := CCFBasicGame fcfcFieldTile rotateClockwise.
	tile3 placement westward: tile2; commit.
	placement := CCFBasicGame cfrrTile placement westward: tile3; commit.
	
	follower := CCFFollower new.
	(placement northernEdge deploy: follower) should be isLegal.
	(placement easternEdge deploy: follower) should be isLegal.
	(placement easternEdge right deploy: follower) should be isLegal.
	(placement easternEdge left deploy: follower) should not be isLegal