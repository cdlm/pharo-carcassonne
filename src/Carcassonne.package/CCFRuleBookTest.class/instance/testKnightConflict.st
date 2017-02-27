tests - deploying followers
testKnightConflict
	| knight existingKnight farmer claimedTile tilePlacement |
	existingKnight := CCFFollower new.
	knight := CCFFollower new.
	farmer := CCFFollower new.
	
	claimedTile := CCFBasicGame rrfcTile.
	(claimedTile placement commit easternEdge deploy: existingKnight) commit.

	tilePlacement := (CCFBasicGame ccffTile placement westward: claimedTile) commit.
	(tilePlacement commit northernEdge deploy: knight) should not be isLegal.
	(tilePlacement commit easternEdge deploy: farmer) should be isLegal