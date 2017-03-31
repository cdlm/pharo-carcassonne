tile factories
fcfcTile
	"Tile G from rule book, 1 available"
	| city |
	city := CCFSegment new.
	
	^ CCFTile
		north: (CCFFieldEdge on: CCFSegment new)
		west:  (CCFCityEdge on: city)
		south: (CCFFieldEdge on: CCFSegment new)
		east:  (CCFCityEdge on: city)