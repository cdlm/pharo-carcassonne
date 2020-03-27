Class {
	#name : #CCFSegmentTest,
	#superclass : #TestCase,
	#category : 'Carcassonne-Tests'
}

{ #category : #tests }
CCFSegmentTest >> testMergeSimpleExtents [
	| sa sb |
	sa := CCFSegment new.
	sb := CCFSegment new.
	
	sa mergeExtentsWith: sb.
	
	sa extent should be: sb extent.
	sa extent should be covers: sa.
	sa extent should be covers: sb.
]
