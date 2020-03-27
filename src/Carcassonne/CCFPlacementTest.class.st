Class {
	#name : #CCFPlacementTest,
	#superclass : #TestCase,
	#instVars : [
		'placement',
		'tile',
		'otherTile'
	],
	#category : 'Carcassonne-Tests'
}

{ #category : #initialization }
CCFPlacementTest >> setUp [
	tile := Mock named: 'a tile'.
	otherTile := Mock named: 'another tile'.
	placement := CCFPlacement of: tile

]

{ #category : #tests }
CCFPlacementTest >> testCreation [
	"Can not place a tile without neighbours"
	placement should not be isLegal
]

{ #category : #tests }
CCFPlacementTest >> testEastward [
	placement eastward: otherTile.
	
	tile should receive easternEdge.
	otherTile should receive westernEdge
]

{ #category : #tests }
CCFPlacementTest >> testNorthward [
	placement northward: otherTile.
	
	tile should receive northernEdge.
	otherTile should receive southernEdge
]

{ #category : #tests }
CCFPlacementTest >> testSouthward [
	placement southward: otherTile.
	
	tile should receive southernEdge.
	otherTile should receive northernEdge
]

{ #category : #tests }
CCFPlacementTest >> testWestward [
	placement westward: otherTile.
	
	tile should receive westernEdge.
	otherTile should receive easternEdge
]
