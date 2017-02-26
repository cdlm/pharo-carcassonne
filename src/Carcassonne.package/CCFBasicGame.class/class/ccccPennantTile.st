tiles
ccccPennantTile
	"Tile C from rule book, 1 available"
	| city |
	city := CCFSegment new. self flag: 'pennant segment'.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west: (CCFCityEdge on: city)
		south: (CCFCityEdge on: city)
		east: (CCFCityEdge on: city)