tile factories
frrrTile
	"Tile W from rule book, 4 available"
	| fieldNorth fieldSouthWest fieldSouthEast |
	fieldNorth := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	fieldSouthEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFFieldEdge on: fieldNorth)
		west:  (CCFRoadEdge on: CCFSegment new between: fieldSouthWest and: fieldNorth)
		south: (CCFRoadEdge on: CCFSegment new between: fieldSouthEast and: fieldSouthWest)
		east:  (CCFRoadEdge on: CCFSegment new between: fieldNorth and: fieldSouthEast)