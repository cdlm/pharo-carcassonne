tile factories
ccffCitiesTile
	"Tile I from rule book, 2 available"
	| cityNorth cityWest field |
	cityNorth := CCFSegment new.
	cityWest := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: cityNorth)
		west:  (CCFCityEdge on: cityWest)
		south: (CCFFieldEdge on: field)
		east:  (CCFFieldEdge on: field)