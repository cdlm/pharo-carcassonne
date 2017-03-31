tile factories
ffffCloisterTile
	| field |
	self flag: 'cloister tile'.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFFieldEdge on: field)
		west:  (CCFFieldEdge on: field)
		south: (CCFFieldEdge on: field)
		east:  (CCFFieldEdge on: field)