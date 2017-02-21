tiles
ccccPennantTile
	"Tile C from rule book, 1 available"
	| city |
	city := CCFSegment new. self flag: 'pennant segment'.
	
	^ CCFTile
		north: (CCFTownEdge on: city)
		west: (CCFTownEdge on: city)
		south: (CCFTownEdge on: city)
		east: (CCFTownEdge on: city)