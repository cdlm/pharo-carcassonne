tiles
rfrcTile
	"Tile D from rule book, 4 available, including the starting tile"
	| road city fieldWest fieldEast |
	road := CCFSegment new.
	city := CCFSegment new.
	fieldWest := CCFSegment new.
	fieldEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFRoadEdge on: road between: fieldWest and: fieldEast)
		west: (CCFGrassEdge on: fieldWest)
		south: (CCFRoadEdge on: road between: fieldEast and: fieldWest)
		east: (CCFCityEdge on: city)