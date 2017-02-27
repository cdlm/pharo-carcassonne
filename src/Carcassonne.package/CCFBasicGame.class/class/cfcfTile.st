tiles
cfcfTile
	"Tile G from rule book, 1 available"
	| city fieldWest fieldEast |
	city := CCFSegment new.
	fieldWest := CCFSegment new.
	fieldEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west: (CCFFieldEdge on: fieldWest)
		south: (CCFCityEdge on: city)
		east: (CCFFieldEdge on: fieldEast)