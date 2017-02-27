tests - deploying followers
testKnight
	| tile knight |
	knight := CCFFollower new.
	tile := CCFBasicGame ccrrTile.
	
	(tile placement northernEdge segment deploy: knight) should be isLegal