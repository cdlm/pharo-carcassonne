tiles
ffrfCloisterTile
	| field road |
	field := CCFSegment new.
	road := CCFSegment new.
	self flag: 'cloister tile'.

	^ CCFTile
		north: (CCFFieldEdge on: field)
		west: (CCFFieldEdge on: field)
		south: (CCFRoadEdge on: road between: field and: field)
		east: (CCFFieldEdge on: field)