tests - deploying followers
testFarmers
	| tile farmer |
	farmer := CCFFollower new.
	tile := CCFBasicGame ccrrTile.
	
	(tile placement easternEdge left deploy: farmer) should be isLegal.
	(tile placement easternEdge right deploy: farmer) should be isLegal