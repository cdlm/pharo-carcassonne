Class {
	#name : #CCFRoadEdge,
	#superclass : #CCFTileEdge,
	#instVars : [
		'left',
		'right'
	],
	#category : 'Carcassonne-Core'
}

{ #category : #'instance creation' }
CCFRoadEdge class >> on: aRoadSegment between: leftFieldSegment and: rightFieldSegment [
	"left and right when viewed from inside the tile"
	^ (self on: aRoadSegment)
		left: leftFieldSegment;
		right: rightFieldSegment;
		yourself
]

{ #category : #connecting }
CCFRoadEdge >> commitConnection: facingEdge [
	super commitConnection: facingEdge.
	self left mergeExtentsWith: facingEdge right.
	self right mergeExtentsWith: facingEdge left
]

{ #category : #'double dispatch' }
CCFRoadEdge >> connect: aTileEdge [ 
	^ aTileEdge connectRoad: self
]

{ #category : #connecting }
CCFRoadEdge >> connectRoad: aRoadEdge [
	^ self legalConnectionWith: aRoadEdge
]

{ #category : #accessing }
CCFRoadEdge >> left [
	^ left
]

{ #category : #accessing }
CCFRoadEdge >> left: anExtent [ 
	left := anExtent
]

{ #category : #accessing }
CCFRoadEdge >> right [
	^ right
]

{ #category : #accessing }
CCFRoadEdge >> right: anExtent [ 
	right := anExtent
]

{ #category : #accessing }
CCFRoadEdge >> segments [
	^ { left. segment. right }
]

{ #category : #accessing }
CCFRoadEdge >> tile: ownerTile [
	super tile: ownerTile.
	left tile: ownerTile.
	right tile: ownerTile
]
