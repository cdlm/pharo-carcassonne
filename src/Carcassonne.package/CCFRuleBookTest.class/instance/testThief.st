tests - deploying followers
testThief
	| tile thief |
	thief := CCFFollower new.
	tile := CCFBasicGame ccrrTile.
	
	(tile placement southernEdge segment deploy: thief) should be isLegal