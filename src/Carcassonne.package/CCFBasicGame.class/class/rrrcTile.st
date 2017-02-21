tiles
rrrcTile
	"Tile L from rule book, 3 available"
	| roadNorth roadWest roadSouth city fieldNorthWest fieldSouthWest fieldEast |
	roadNorth := CCFSegment new.
	roadWest := CCFSegment new.
	roadSouth := CCFSegment new.
	city := CCFSegment new.
	fieldNorthWest := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	fieldEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFRoadEdge on: roadNorth between: fieldNorthWest and: fieldEast)
		west: (CCFRoadEdge on: roadWest between: fieldSouthWest and: fieldNorthWest)
		south: (CCFRoadEdge on: roadSouth between: fieldEast and: fieldSouthWest)
		east: (CCFTownEdge on: city)