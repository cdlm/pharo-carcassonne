Class {
	#name : #CCFTileTest,
	#superclass : #TestCase,
	#category : 'Carcassonne-Tests'
}

{ #category : #tests }
CCFTileTest >> testCreation [
	| tile |
	[ :n :w :s :e |
		tile := CCFTile north: n west: w south: s east: e.
		n should receive tile: tile.
		tile northernEdge should be: n.
		w should receive tile: tile.
		tile westernEdge  should be: w.
		s should receive tile: tile.
		tile southernEdge should be: s.
		e should receive tile: tile.
		tile easternEdge  should be: e.
	] runWithMocks
]
