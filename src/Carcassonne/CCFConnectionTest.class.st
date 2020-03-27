Class {
	#name : #CCFConnectionTest,
	#superclass : #TestCase,
	#instVars : [
		'connection'
	],
	#category : 'Carcassonne-Tests'
}

{ #category : #tests }
CCFConnectionTest >> testCommitRoadConnection [
	| edgeA edgeB sa sal sar sb sbl sbr |
	sa := CCFSegment new.
	sal := CCFSegment new.
	sar := CCFSegment new.
	sb := CCFSegment new.
	sbl := CCFSegment new.
	sbr := CCFSegment new.
	
	edgeA := CCFRoadEdge on: sa between: sal and: sar.
	edgeB := CCFRoadEdge on: sb between: sbl and: sbr.
	
	(CCFLegalConnection with: edgeA with: edgeB) commit.
	
	{ sa. sb. sal. sbr. sar. sbl } pairsDo: [ :a :b |
		a extent should be covers: b.
		b extent should be: a extent ]

]

{ #category : #tests }
CCFConnectionTest >> testCommitSimpleConnection [
	self testCommitSimpleConnectionOfClass: CCFFieldEdge.
	self testCommitSimpleConnectionOfClass: CCFCityEdge.
]

{ #category : #tests }
CCFConnectionTest >> testCommitSimpleConnectionOfClass: edgeClass [
	| edgeA edgeB sa sb |
	sa := CCFSegment new.
	sb := CCFSegment new.
	
	edgeA := edgeClass on: sa.
	edgeB := edgeClass on: sb.
	
	(CCFLegalConnection with: edgeA with: edgeB) commit.
	
	sa extent should be covers: sb.
	sb extent should be: sa extent
]

{ #category : #tests }
CCFConnectionTest >> testConnectingIncompatibleEdges [
	(CCFFieldEdge new connect: CCFRoadEdge new) should not be isLegal.
	(CCFFieldEdge new connect: CCFCityEdge new) should not be isLegal.
	(CCFRoadEdge new connect: CCFFieldEdge new) should not be isLegal.
	(CCFRoadEdge new connect: CCFCityEdge new) should not be isLegal.
	(CCFCityEdge new connect: CCFFieldEdge new) should not be isLegal.
	(CCFCityEdge new connect: CCFRoadEdge new) should not be isLegal.
]

{ #category : #tests }
CCFConnectionTest >> testConnectingSimilarEdges [
	(CCFFieldEdge new connect: CCFFieldEdge new) should be isLegal.
	(CCFRoadEdge new connect: CCFRoadEdge new) should be isLegal.
	(CCFCityEdge new connect: CCFCityEdge new) should be isLegal.
]
