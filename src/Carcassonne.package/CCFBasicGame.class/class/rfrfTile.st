tiles
rfrfTile
	"Tile U from rule book, 8 available"
	| road fieldWest fieldEast |

	road := CCFSegment new.
	fieldWest := CCFSegment new.
	fieldEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFRoadEdge on: road between: fieldWest and: fieldEast)
		west: (CCFGrassEdge on: fieldWest)
		south: (CCFRoadEdge on: road between: fieldEast and: fieldWest)
		east: (CCFGrassEdge on: fieldEast)