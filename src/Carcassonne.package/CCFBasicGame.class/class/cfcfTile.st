tiles
cfcfTile
	"Tile G from rule book, 1 available"
	| city fieldWest fieldEast |
	city := CCFSegment new.
	fieldWest := CCFSegment new.
	fieldEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFTownEdge on: city)
		west: (CCFGrassEdge on: fieldWest)
		south: (CCFTownEdge on: city)
		east: (CCFGrassEdge on: fieldEast)