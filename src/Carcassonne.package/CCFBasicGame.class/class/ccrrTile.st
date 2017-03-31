tile factories
ccrrTile
	"Tile P from rule book, 3 available"
	| city road field fieldSouthWest |
	city := CCFSegment new.
	road := CCFSegment new.
	field := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFCityEdge on: city)
		south: (CCFRoadEdge on: road between: fieldSouthWest and: field)
		east:  (CCFRoadEdge on: road between: field and: fieldSouthWest)