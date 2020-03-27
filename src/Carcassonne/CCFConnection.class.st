Class {
	#name : #CCFConnection,
	#superclass : #Object,
	#category : 'Carcassonne-Core'
}

{ #category : #testing }
CCFConnection class >> isAbstract [
	^ self name = #CCFConnection
]

{ #category : #committing }
CCFConnection >> commit [
	self subclassResponsibility
]

{ #category : #testing }
CCFConnection >> isLegal [
	^ self subclassResponsibility
]

{ #category : #testing }
CCFConnection >> isPeriphery [
	^ self subclassResponsibility
]
