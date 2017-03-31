tile factories
cfrrTile
	"Tile J from rule book, 3 available"
	| city road fieldSouthWest field |
	city := CCFSegment new.
	road := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFFieldEdge on: field)
		south: (CCFRoadEdge on: road between: fieldSouthWest and: field)
		east:  (CCFRoadEdge on: road between: field and: fieldSouthWest)