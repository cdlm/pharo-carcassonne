Class {
	#name : #CCFEdge,
	#superclass : #Object,
	#category : 'Carcassonne-Core'
}

{ #category : #'double dispatch' }
CCFEdge >> connect: aTileEdge [
	^ self subclassResponsibility
]
