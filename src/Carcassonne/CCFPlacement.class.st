Class {
	#name : #CCFPlacement,
	#superclass : #Object,
	#instVars : [
		'connections',
		'tile'
	],
	#category : 'Carcassonne-Core'
}

{ #category : #'instance creation' }
CCFPlacement class >> of: aTile [ 
	^ self new
		setTile: aTile;
		yourself
]

{ #category : #committing }
CCFPlacement >> commit [
	connections do: #commit
]

{ #category : #accessing }
CCFPlacement >> easternEdge [
	^ tile easternEdge
]

{ #category : #accessing }
CCFPlacement >> eastward [
	^ (connections at: 4) adjacent tile
]

{ #category : #initialization }
CCFPlacement >> eastward: aTile [ 
	connections at: 4
		put: (aTile westernEdge connect: tile easternEdge)
]

{ #category : #initialization }
CCFPlacement >> initialize [
	super initialize.
	connections := Array
		new: 4
		withAll: CCFUnconnected instance
]

{ #category : #testing }
CCFPlacement >> isLegal [
	^ (connections allSatisfy: #isLegal)
		and: [ connections anySatisfy: [ :it | it isPeriphery not ] ]
]

{ #category : #accessing }
CCFPlacement >> northernEdge [
	^ tile northernEdge
]

{ #category : #accessing }
CCFPlacement >> northward [
	^ (connections at: 1) adjacent tile
]

{ #category : #initialization }
CCFPlacement >> northward: aTile [
	connections at: 1
		put: (aTile southernEdge connect: tile northernEdge)
]

{ #category : #initialization }
CCFPlacement >> setTile: aTile [ 
	tile := aTile

]

{ #category : #accessing }
CCFPlacement >> southernEdge [
	^ tile southernEdge
]

{ #category : #accessing }
CCFPlacement >> southward [
	^ (connections at: 3) adjacent tile
]

{ #category : #initialization }
CCFPlacement >> southward: aTile [ 
	connections at: 3
		put: (aTile northernEdge connect: tile southernEdge)
]

{ #category : #accessing }
CCFPlacement >> westward [
	^ (connections at: 2) adjacent tile
]

{ #category : #initialization }
CCFPlacement >> westward: aTile [ 
	connections at: 2
		put: (aTile easternEdge connect: tile westernEdge)
]
