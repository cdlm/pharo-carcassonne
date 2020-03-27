Class {
	#name : #CCFLegalConnection,
	#superclass : #CCFConnection,
	#instVars : [
		'edgeA',
		'edgeB'
	],
	#category : 'Carcassonne-Core'
}

{ #category : #'instance creation' }
CCFLegalConnection class >> with: aTileEdge with: anotherTileEdge [
	^ self new
		setEdge: aTileEdge
		and: anotherTileEdge;
		yourself
]

{ #category : #accessing }
CCFLegalConnection >> adjacent [
	^ edgeB
]

{ #category : #committing }
CCFLegalConnection >> commit [
	edgeA commitConnection: edgeB
]

{ #category : #testing }
CCFLegalConnection >> isLegal [
	^ true
]

{ #category : #testing }
CCFLegalConnection >> isPeriphery [
	^ false
]

{ #category : #initialization }
CCFLegalConnection >> setEdge: aTileEdge and: anotherTileEdge [
	edgeA := aTileEdge.
	edgeB := anotherTileEdge
]
