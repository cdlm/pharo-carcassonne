tile factories
cfcfCitiesTile
	"Tile H from rule book, 3 available"
	| field |
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: CCFSegment new)
		west:  (CCFFieldEdge on: field)
		south: (CCFCityEdge on: CCFSegment new)
		east:  (CCFFieldEdge on: field)