tiles
cfffTile
	"Tile E from rule book, 5 available"
	| city field |
	city := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west: (CCFFieldEdge on: field)
		south: (CCFFieldEdge on: field)
		east: (CCFFieldEdge on: field)