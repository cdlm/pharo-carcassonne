Class {
	#name : #CCFMap,
	#superclass : #Object,
	#instVars : [
		'tiles',
		'freePlace'
	],
	#category : #'Carcassonne-Core'
}

{ #category : #'instance creation' }
CCFMap class >> with: startingTile [
	^ self new
		setStartingTile: startingTile;
		yourself
]

{ #category : #accessing }
CCFMap >> at: rowNumber at: columnNumber [
	^ tiles
		at: rowNumber at: columnNumber
		ifInvalid: freePlace
]

{ #category : #accessing }
CCFMap >> extent [
	^ tiles extent
]

{ #category : #initialization }
CCFMap >> initialize [
	freePlace := CCFFreePlace new.
	tiles := Array2D
		rows: 3
		columns: 3
		element: freePlace
]

{ #category : #accessing }
CCFMap >> placementFor: aTile at: rowNumber at: columnNumber [
	^ aTile placement
		northward: (self at: rowNumber - 1 at: columnNumber);
		westward:  (self at: rowNumber     at: columnNumber - 1);
		southward: (self at: rowNumber + 1 at: columnNumber);
		eastward:  (self at: rowNumber     at: columnNumber + 1)
]

{ #category : #accessing }
CCFMap >> setStartingTile: aTile [
	tiles
		at: 2 at: 2
		put: aTile
]

{ #category : #enumerating }
CCFMap >> withIndicesDo: aBlock [
	^ tiles withIndicesDo: aBlock
]
