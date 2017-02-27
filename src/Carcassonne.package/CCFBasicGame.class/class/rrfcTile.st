tiles
rrfcTile
	"Tile K from rule book, 3 available"
	| road city fieldNorthWest field |
	road := CCFSegment new.
	city := CCFSegment new.
	fieldNorthWest := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFRoadEdge on: road between: fieldNorthWest and: field)
		west: (CCFRoadEdge on: road between: field and: fieldNorthWest)
		south: (CCFFieldEdge on: field)
		east: (CCFCityEdge on: city)