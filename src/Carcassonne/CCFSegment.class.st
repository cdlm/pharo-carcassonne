Class {
	#name : #CCFSegment,
	#superclass : #Object,
	#instVars : [
		'extent',
		'tile',
		'follower'
	],
	#category : 'Carcassonne-Core'
}

{ #category : #committing }
CCFSegment >> commitDeployment: aFollower [ 
	follower := aFollower
]

{ #category : #deploying }
CCFSegment >> deploy: aFollower [ 
	^ CCFDeployment
		of: aFollower
		on: self
]

{ #category : #accessing }
CCFSegment >> extent [
	^ extent
]

{ #category : #accessing }
CCFSegment >> extent: anExtent [
	extent := anExtent
]

{ #category : #initialization }
CCFSegment >> initialize [
	super initialize.
	extent := CCFExtent with: self
]

{ #category : #testing }
CCFSegment >> isClaimed [
	^ follower notNil
]

{ #category : #merging }
CCFSegment >> mergeExtentsWith: facingSegment [
	extent absorbExtent: facingSegment extent
]

{ #category : #accessing }
CCFSegment >> tile [
	^ tile
]

{ #category : #accessing }
CCFSegment >> tile: ownerTile [
	tile := ownerTile
]
