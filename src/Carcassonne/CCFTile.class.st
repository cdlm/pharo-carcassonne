Class {
	#name : #CCFTile,
	#superclass : #Object,
	#instVars : [
		'edges'
	],
	#category : 'Carcassonne-Core'
}

{ #category : #'instance creation' }
CCFTile class >> north: northEdge west: westEdge south: southEdge east: eastEdge [ 
	^ self new
		setNorth: northEdge
		west: westEdge
		south: southEdge
		east: eastEdge;
		yourself
]

{ #category : #accessing }
CCFTile >> easternEdge [
	^ edges fourth
]

{ #category : #accessing }
CCFTile >> northernEdge [
	^ edges first
]

{ #category : #connecting }
CCFTile >> placement [
	^ CCFPlacement of: self
]

{ #category : #rotating }
CCFTile >> rotateClockwise [
	"edges := edges allButFirst , { edges first }"
	self rotateEdgesBy: -1
]

{ #category : #rotating }
CCFTile >> rotateCounterclockwise [
	"edges := { edges last } , edges allButLast"
	self rotateEdgesBy: 1
]

{ #category : #rotating }
CCFTile >> rotateEdgesBy: indexShift [
	| newEdges |
	newEdges := Array new: 4.
	1 to: 4 do: [ :index |
		newEdges
			atWrap: index + indexShift
			put: (edges at: index) ].
	edges := newEdges
]

{ #category : #rotating }
CCFTile >> rotateHalfturn [
	self rotateEdgesBy: 2
]

{ #category : #accessing }
CCFTile >> segments [
	^ edges flatCollectAsSet: #segments
]

{ #category : #initialization }
CCFTile >> setNorth: northEdge west: westEdge south: southEdge east: eastEdge [
	northEdge tile: self.
	westEdge tile: self.
	southEdge tile: self.
	eastEdge tile: self.
	
	edges := { northEdge. westEdge. southEdge. eastEdge }
]

{ #category : #accessing }
CCFTile >> southernEdge [
	^ edges third
]

{ #category : #accessing }
CCFTile >> westernEdge [
	^ edges second
]
