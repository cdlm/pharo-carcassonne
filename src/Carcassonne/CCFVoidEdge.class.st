Class {
	#name : #CCFVoidEdge,
	#superclass : #CCFEdge,
	#category : 'Carcassonne-Core'
}

{ #category : #'double dispatch' }
CCFVoidEdge >> connect: aTileEdge [
	^ CCFUnconnected instance
]

{ #category : #accessing }
CCFVoidEdge >> tile [
	^ CCFFreePlace new
]
