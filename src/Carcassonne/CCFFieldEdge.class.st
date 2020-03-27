Class {
	#name : #CCFFieldEdge,
	#superclass : #CCFTileEdge,
	#category : 'Carcassonne-Core'
}

{ #category : #'double dispatch' }
CCFFieldEdge >> connect: aTileEdge [ 
	^ aTileEdge connectField: self
]

{ #category : #connecting }
CCFFieldEdge >> connectField: aGrassEdge [ 
	^ self legalConnectionWith: aGrassEdge
]
