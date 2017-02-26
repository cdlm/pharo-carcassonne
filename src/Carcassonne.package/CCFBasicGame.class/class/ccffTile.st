tiles
ccffTile
	"Tile N from rule book, 3 available"
	| city field |
	city := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west: (CCFCityEdge on: city)
		south: (CCFGrassEdge on: field)
		east: (CCFGrassEdge on: field)