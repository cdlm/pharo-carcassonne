Class {
	#name : #CCFUnconnected,
	#superclass : #CCFConnection,
	#category : 'Carcassonne-Core'
}

{ #category : #singleton }
CCFUnconnected class >> instance [
	^ instance ifNil: [ instance := self basicNew ]
]

{ #category : #accessing }
CCFUnconnected >> adjacent [
	^ CCFVoidEdge new
]

{ #category : #connecting }
CCFUnconnected >> commit [
	"Do nothing"
]

{ #category : #testing }
CCFUnconnected >> isLegal [
	^ true
]

{ #category : #testing }
CCFUnconnected >> isPeriphery [
	^ true
]
