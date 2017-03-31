tile factories
crrrTile
	"Tile L from rule book, 3 available"
	| city fieldNorth fieldSouthWest fieldSouthEast |
	city := CCFSegment new.
	fieldNorth := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	fieldSouthEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFRoadEdge on: CCFSegment new between: fieldSouthWest and: fieldNorth)
		south: (CCFRoadEdge on: CCFSegment new between: fieldSouthEast and: fieldSouthWest)
		east:  (CCFRoadEdge on: CCFSegment new between: fieldNorth and: fieldSouthEast)