tiles
cfrrTile
	"Tile J from rule book, 3 available"
	| road city fieldSouthWest field |
	road := CCFSegment new.
	city := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west: (CCFGrassEdge on: field)
		south: (CCFRoadEdge on: road between: fieldSouthWest and: field)
		east: (CCFRoadEdge on: road between: field and: fieldSouthWest)