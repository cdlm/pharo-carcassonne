Class {
	#name : #CCFDeployment,
	#superclass : #Object,
	#instVars : [
		'segment',
		'follower'
	],
	#category : 'Carcassonne-Core'
}

{ #category : #'instance creation' }
CCFDeployment class >> of: aFollower on: aSegment [ 
	^ self new
		setSegment: aSegment follower: aFollower;
		yourself
]

{ #category : #committing }
CCFDeployment >> commit [
	segment commitDeployment: follower
]

{ #category : #testing }
CCFDeployment >> isLegal [
	^ segment extent isClaimed not
]

{ #category : #initialization }
CCFDeployment >> setSegment: aSegment follower: aFollower [
	segment := aSegment.
	follower := aFollower
]
