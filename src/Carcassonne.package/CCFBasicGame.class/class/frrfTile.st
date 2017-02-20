tiles
frrfTile
	"Tile V from rule book, 9 available"
	| field road fieldSouthWest |

	field := CCFSegment new.
	road := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	
	^ CCFTile
		north: (CCFGrassEdge on: field)
		west: (CCFRoadEdge on: road between: fieldSouthWest and: field)
		south: (CCFRoadEdge on: road between: field and: fieldSouthWest)
		east: (CCFGrassEdge on: field)