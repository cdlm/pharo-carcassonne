tile factories
ccfcTile
	"Tile R from rule book, 3 available"
	| city field |
	city := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFCityEdge on: city)
		south: (CCFFieldEdge on: field)
		east:  (CCFCityEdge on: city)