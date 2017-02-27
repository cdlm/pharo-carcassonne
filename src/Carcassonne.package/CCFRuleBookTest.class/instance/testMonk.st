tests - deploying followers
testMonk
	<expectedFailure>
	| tile monk |
	monk := CCFFollower new.
	tile := CCFBasicGame ffffCloisterTile.
	
	(tile placement feature deploy: monk) should be isLegal