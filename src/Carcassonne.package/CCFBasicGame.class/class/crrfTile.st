tile factories
crrfTile
	"Tile K from rule book, 3 available"
	| city road field fieldSouthWest |
	city := CCFSegment new.
	road := CCFSegment new.
	field := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFRoadEdge on: road between: fieldSouthWest and: field)
		south: (CCFRoadEdge on: road between: field and: fieldSouthWest)
		east:  (CCFFieldEdge on: field)