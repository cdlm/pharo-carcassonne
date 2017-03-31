tile factories
ccrcTile
	"Tile T from rule book, 1 available"
	| city road fieldSouthWest fieldSouthEast |
	city := CCFSegment new.
	road := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	fieldSouthEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFCityEdge on: city)
		south: (CCFRoadEdge on: road between: fieldSouthEast and: fieldSouthWest)
		east:  (CCFCityEdge on: city)