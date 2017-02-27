tiles
fcfcFieldTile
	"Tile H from rule book, 3 available"
	| field cityWest cityEast |

	field := CCFSegment new.
	cityWest := CCFSegment new.
	cityEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFFieldEdge on: field)
		west: (CCFCityEdge on: cityWest)
		south: (CCFFieldEdge on: field)
		east: (CCFCityEdge on: cityEast)