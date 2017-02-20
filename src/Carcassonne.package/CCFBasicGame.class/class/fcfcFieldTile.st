tiles
fcfcFieldTile
	"Tile H from rule book, 3 available"
	| field cityWest cityEast |

	field := CCFSegment new.
	cityWest := CCFSegment new.
	cityEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFGrassEdge on: field)
		west: (CCFTownEdge on: cityWest)
		south: (CCFGrassEdge on: field)
		east: (CCFTownEdge on: cityEast)