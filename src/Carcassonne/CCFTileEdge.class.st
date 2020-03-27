Class {
	#name : #CCFTileEdge,
	#superclass : #CCFEdge,
	#instVars : [
		'segment'
	],
	#category : 'Carcassonne-Core'
}

{ #category : #'instance creation' }
CCFTileEdge class >> on: aSegment [
	^ self new
		segment: aSegment;
		yourself
]

{ #category : #committing }
CCFTileEdge >> commitConnection: facingEdge [
	self segment mergeExtentsWith: facingEdge segment
]

{ #category : #committing }
CCFTileEdge >> connectCity: aCityEdge [
	^ self illegalConnectionWith: aCityEdge
]

{ #category : #committing }
CCFTileEdge >> connectField: aFieldEdge [
	^ self illegalConnectionWith: aFieldEdge
]

{ #category : #committing }
CCFTileEdge >> connectRoad: aRoadEdge [
	^ self illegalConnectionWith: aRoadEdge
]

{ #category : #deploying }
CCFTileEdge >> deploy: aFollower [ 
	^ self segment deploy: aFollower
]

{ #category : #committing }
CCFTileEdge >> illegalConnectionWith: aTileEdge [
	^ CCFIllegalConnection with: self with: aTileEdge
]

{ #category : #committing }
CCFTileEdge >> legalConnectionWith: aTileEdge [
	^ CCFLegalConnection with: self with: aTileEdge
]

{ #category : #accessing }
CCFTileEdge >> segment [
	^ segment
]

{ #category : #accessing }
CCFTileEdge >> segment: aSegment [
	segment := aSegment
]

{ #category : #accessing }
CCFTileEdge >> segments [
	^ { segment }
]

{ #category : #accessing }
CCFTileEdge >> tile [
	^ segment tile
]

{ #category : #accessing }
CCFTileEdge >> tile: ownerTile [
	segment tile: ownerTile
]
