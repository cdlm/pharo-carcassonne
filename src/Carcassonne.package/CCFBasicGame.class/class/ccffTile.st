tiles
ccffTile
	"Tile N from rule book, 3 available"
	| city field |
	city := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFTownEdge on: city)
		west: (CCFTownEdge on: city)
		south: (CCFGrassEdge on: field)
		east: (CCFGrassEdge on: field)