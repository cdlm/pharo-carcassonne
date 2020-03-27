Class {
	#name : #CCFExtent,
	#superclass : #Object,
	#instVars : [
		'segments'
	],
	#category : 'Carcassonne-Core'
}

{ #category : #'instance creation' }
CCFExtent class >> with: aSegment [
	^ self new
		adoptSegment: aSegment;
		yourself
]

{ #category : #merging }
CCFExtent >> absorbExtent: anExtent [
	anExtent segmentsDo: [ :each | self adoptSegment: each ]
]

{ #category : #merging }
CCFExtent >> adoptSegment: aSegment [
	aSegment extent: self.
	segments add: aSegment

]

{ #category : #testing }
CCFExtent >> covers: aSegment [ 
	^ segments includes: aSegment
]

{ #category : #initialization }
CCFExtent >> initialize [
	super initialize.
	segments := IdentitySet new
]

{ #category : #testing }
CCFExtent >> isClaimed [
	^ segments anySatisfy: #isClaimed
]

{ #category : #enumerating }
CCFExtent >> segmentsDo: aBlock [
	segments do: aBlock
]

{ #category : #accessing }
CCFExtent >> tiles [
	^ segments collect: #tile
]
