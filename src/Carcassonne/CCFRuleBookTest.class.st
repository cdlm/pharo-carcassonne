Class {
	#name : #CCFRuleBookTest,
	#superclass : #TestCase,
	#category : 'Carcassonne-Tests'
}

{ #category : #'tests - deploying followers' }
CCFRuleBookTest >> testFarmerConflict [
	| tile1 existingFarmer tile2 tile3 placement follower |
	tile1 := CCFBasicGame ccrrPennantTile rotateCounterclockwise.
	existingFarmer := CCFFollower new.
	(tile1 placement commit northernEdge left deploy: existingFarmer) commit.
	
	tile2 := CCFBasicGame ffrfCloisterTile rotateClockwise.
	tile2 placement westward: tile1; commit.
	tile3 := CCFBasicGame cfcfCitiesTile.
	tile3 placement westward: tile2; commit.
	placement := CCFBasicGame cfrrTile placement westward: tile3; commit.
	
	follower := CCFFollower new.
	(placement northernEdge deploy: follower) should be isLegal.
	(placement easternEdge deploy: follower) should be isLegal.
	(placement easternEdge right deploy: follower) should be isLegal.
	(placement easternEdge left deploy: follower) should not be isLegal
]

{ #category : #'tests - deploying followers' }
CCFRuleBookTest >> testFarmers [
	| tile farmer |
	farmer := CCFFollower new.
	tile := CCFBasicGame ccrrTile.
	
	(tile placement easternEdge left deploy: farmer) should be isLegal.
	(tile placement easternEdge right deploy: farmer) should be isLegal
]

{ #category : #'tests - deploying followers' }
CCFRuleBookTest >> testKnight [
	| tile knight |
	knight := CCFFollower new.
	tile := CCFBasicGame ccrrTile.
	
	(tile placement northernEdge segment deploy: knight) should be isLegal
]

{ #category : #'tests - deploying followers' }
CCFRuleBookTest >> testKnightConflict [
	| knight existingKnight farmer claimedTile tilePlacement |
	existingKnight := CCFFollower new.
	knight := CCFFollower new.
	farmer := CCFFollower new.
	
	claimedTile := CCFBasicGame crrfTile rotateClockwise.
	(claimedTile placement commit easternEdge deploy: existingKnight) commit.

	tilePlacement := (CCFBasicGame ccffTile placement westward: claimedTile) commit.
	(tilePlacement commit northernEdge deploy: knight) should not be isLegal.
	(tilePlacement commit easternEdge deploy: farmer) should be isLegal
]

{ #category : #'tests - deploying followers' }
CCFRuleBookTest >> testMonk [
	<expectedFailure>
	| tile monk |
	monk := CCFFollower new.
	tile := CCFBasicGame ffffCloisterTile.
	
	(tile placement feature deploy: monk) should be isLegal
]

{ #category : #tests }
CCFRuleBookTest >> testMoreThanOneFarmer [
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
]

{ #category : #'tests - placing tiles' }
CCFRuleBookTest >> testPlacingTilesCityContinued [
	| tile1 tile2 placement |
	tile1 := CCFBasicGame fcfcTile.
	tile2 := CCFBasicGame crrfTile rotateCounterclockwise.
	
	placement := tile2 placement westward: tile1.
	placement should be isLegal.
	placement commit
]

{ #category : #'tests - placing tiles' }
CCFRuleBookTest >> testPlacingTilesCityFieldContinued [
	| tile1 tile2 tile3 tile4 placement |
	tile1 := CCFBasicGame ccccPennantTile.
	tile2 := CCFBasicGame cfrrTile.
	tile3 := CCFBasicGame rfrfTile rotateClockwise.
	tile4 := CCFBasicGame ccffTile.
	
	placement := tile2 placement northward: tile1.
	placement should be isLegal.
	placement commit.

	placement := tile3 placement westward: tile2.
	placement should be isLegal.
	placement commit.

	placement := tile4 placement westward: tile1; southward: tile3.
	placement should be isLegal.
	placement commit

]

{ #category : #'tests - placing tiles' }
CCFRuleBookTest >> testPlacingTilesInvalid [
	| tile1 tile2 placement |
	tile1 := CCFBasicGame cfffTile rotateHalfturn.
	tile2 := CCFBasicGame frrfTile rotateHalfturn.
	
	placement := tile2 placement northward: tile1.
	placement should not be isLegal
]

{ #category : #'tests - placing tiles' }
CCFRuleBookTest >> testPlacingTilesRoadContinued [
	| tile1 tile2 placement |
	tile1 := CCFBasicGame crfrTile.
	tile2 := CCFBasicGame crrrTile rotateClockwise.
	
	placement := tile2 placement westward: tile1.
	placement should be isLegal.
	placement commit
]

{ #category : #'tests - deploying followers' }
CCFRuleBookTest >> testThief [
	| tile thief |
	thief := CCFFollower new.
	tile := CCFBasicGame ccrrTile.
	
	(tile placement southernEdge segment deploy: thief) should be isLegal
]
