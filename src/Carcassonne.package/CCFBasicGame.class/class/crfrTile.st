tile factories
crfrTile
	"Tile D from rule book, 4 available, including the starting tile"
	| road fieldNorth fieldSouth |
	road := CCFSegment new.
	fieldNorth := CCFSegment new.
	fieldSouth := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: CCFSegment new)
		west:  (CCFRoadEdge on: road between: fieldSouth and: fieldNorth)
		south: (CCFFieldEdge on: fieldNorth)
		east:  (CCFRoadEdge on: road between: fieldNorth and: fieldSouth)