tile factories
rrrrTile
	"Tile X from rule book, 1 available"
	| fieldNorthWest fieldSouthWest fieldSouthEast fieldNorthEast |
	fieldNorthWest := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	fieldSouthEast := CCFSegment new.
	fieldNorthEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFRoadEdge on: CCFSegment new between: fieldNorthWest and: fieldNorthEast)
		west:  (CCFRoadEdge on: CCFSegment new between: fieldSouthWest and: fieldNorthWest)
		south: (CCFRoadEdge on: CCFSegment new between: fieldSouthEast and: fieldSouthWest)
		east:  (CCFRoadEdge on: CCFSegment new between: fieldNorthEast and: fieldSouthEast)