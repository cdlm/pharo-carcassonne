tiles
cfffTile
	"Tile E from rule book, 5 available"
	| city field |
	city := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west: (CCFGrassEdge on: field)
		south: (CCFGrassEdge on: field)
		east: (CCFGrassEdge on: field)