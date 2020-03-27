Class {
	#name : #CCFCityEdge,
	#superclass : #CCFTileEdge,
	#category : 'Carcassonne-Core'
}

{ #category : #'double dispatch' }
CCFCityEdge >> connect: aTileEdge [ 
	^ aTileEdge connectCity: self
]

{ #category : #connecting }
CCFCityEdge >> connectCity: aCityEdge [ 
	^ self legalConnectionWith: aCityEdge
]
