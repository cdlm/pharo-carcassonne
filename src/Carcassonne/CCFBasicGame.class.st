Class {
	#name : #CCFBasicGame,
	#superclass : #Object,
	#instVars : [
		'tiles'
	],
	#category : 'Carcassonne-Rules'
}

{ #category : #'tile factories' }
CCFBasicGame class >> ccccPennantTile [
	"Tile C from rule book, 1 available"
	| city |
	city := CCFSegment new. self flag: 'pennant segment'.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFCityEdge on: city)
		south: (CCFCityEdge on: city)
		east:  (CCFCityEdge on: city)
]

{ #category : #'tile factories' }
CCFBasicGame class >> ccfcPennantTile [
	"Tile Q from rule book, 1 available"
	self flag: 'pennant segment'.
	^ self ccfcTile
]

{ #category : #'tile factories' }
CCFBasicGame class >> ccfcTile [
	"Tile R from rule book, 3 available"
	| city field |
	city := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFCityEdge on: city)
		south: (CCFFieldEdge on: field)
		east:  (CCFCityEdge on: city)
]

{ #category : #'tile factories' }
CCFBasicGame class >> ccffCitiesTile [
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
]

{ #category : #'tile factories' }
CCFBasicGame class >> ccffPennantTile [
	"Tile M from rule book, 2 available"
	self flag: 'pennant segment'.
	^ self ccffTile
]

{ #category : #'tile factories' }
CCFBasicGame class >> ccffTile [
	"Tile N from rule book, 3 available"
	| city field |
	city := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFCityEdge on: city)
		south: (CCFFieldEdge on: field)
		east:  (CCFFieldEdge on: field)
]

{ #category : #'tile factories' }
CCFBasicGame class >> ccrcPennantTile [
	"Tile S from rule book, 2 available"
	self flag: 'pennant segment'.
	^ self ccrcTile
]

{ #category : #'tile factories' }
CCFBasicGame class >> ccrcTile [
	"Tile T from rule book, 1 available"
	| city road fieldSouthWest fieldSouthEast |
	city := CCFSegment new.
	road := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	fieldSouthEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFCityEdge on: city)
		south: (CCFRoadEdge on: road between: fieldSouthEast and: fieldSouthWest)
		east:  (CCFCityEdge on: city)
]

{ #category : #'tile factories' }
CCFBasicGame class >> ccrrPennantTile [
	self flag: 'pennant segment'.
	^ self ccrrTile
]

{ #category : #'tile factories' }
CCFBasicGame class >> ccrrTile [
	"Tile P from rule book, 3 available"
	| city road field fieldSouthWest |
	city := CCFSegment new.
	road := CCFSegment new.
	field := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFCityEdge on: city)
		south: (CCFRoadEdge on: road between: fieldSouthWest and: field)
		east:  (CCFRoadEdge on: road between: field and: fieldSouthWest)
]

{ #category : #'tile factories' }
CCFBasicGame class >> cfcfCitiesTile [
	"Tile H from rule book, 3 available"
	| field |
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: CCFSegment new)
		west:  (CCFFieldEdge on: field)
		south: (CCFCityEdge on: CCFSegment new)
		east:  (CCFFieldEdge on: field)
]

{ #category : #'tile factories' }
CCFBasicGame class >> cfffTile [
	"Tile E from rule book, 5 available"
	| city field |
	city := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFFieldEdge on: field)
		south: (CCFFieldEdge on: field)
		east:  (CCFFieldEdge on: field)
]

{ #category : #'tile factories' }
CCFBasicGame class >> cfrrTile [
	"Tile J from rule book, 3 available"
	| city road fieldSouthWest field |
	city := CCFSegment new.
	road := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFFieldEdge on: field)
		south: (CCFRoadEdge on: road between: fieldSouthWest and: field)
		east:  (CCFRoadEdge on: road between: field and: fieldSouthWest)
]

{ #category : #'tile factories' }
CCFBasicGame class >> crfrTile [
	"Tile D from rule book, 4 available, including the starting tile"
	| road fieldNorth fieldSouth |
	road := CCFSegment new.
	fieldNorth := CCFSegment new.
	fieldSouth := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: CCFSegment new)
		west:  (CCFRoadEdge on: road between: fieldSouth and: fieldNorth)
		south: (CCFFieldEdge on: fieldNorth)
		east:  (CCFRoadEdge on: road between: fieldNorth and: fieldSouth)
]

{ #category : #'tile factories' }
CCFBasicGame class >> crrfTile [
	"Tile K from rule book, 3 available"
	| city road field fieldSouthWest |
	city := CCFSegment new.
	road := CCFSegment new.
	field := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFRoadEdge on: road between: fieldSouthWest and: field)
		south: (CCFRoadEdge on: road between: field and: fieldSouthWest)
		east:  (CCFFieldEdge on: field)
]

{ #category : #'tile factories' }
CCFBasicGame class >> crrrTile [
	"Tile L from rule book, 3 available"
	| city fieldNorth fieldSouthWest fieldSouthEast |
	city := CCFSegment new.
	fieldNorth := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	fieldSouthEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFCityEdge on: city)
		west:  (CCFRoadEdge on: CCFSegment new between: fieldSouthWest and: fieldNorth)
		south: (CCFRoadEdge on: CCFSegment new between: fieldSouthEast and: fieldSouthWest)
		east:  (CCFRoadEdge on: CCFSegment new between: fieldNorth and: fieldSouthEast)
]

{ #category : #'tile factories' }
CCFBasicGame class >> fcfcPennantTile [
	"Tile F from rule book, 2 available"
	self flag: 'pennant segment'.
	^ self fcfcTile
]

{ #category : #'tile factories' }
CCFBasicGame class >> fcfcTile [
	"Tile G from rule book, 1 available"
	| city |
	city := CCFSegment new.
	
	^ CCFTile
		north: (CCFFieldEdge on: CCFSegment new)
		west:  (CCFCityEdge on: city)
		south: (CCFFieldEdge on: CCFSegment new)
		east:  (CCFCityEdge on: city)
]

{ #category : #'tile factories' }
CCFBasicGame class >> ffffCloisterTile [
	| field |
	self flag: 'cloister tile'.
	field := CCFSegment new.
	
	^ CCFTile
		north: (CCFFieldEdge on: field)
		west:  (CCFFieldEdge on: field)
		south: (CCFFieldEdge on: field)
		east:  (CCFFieldEdge on: field)
]

{ #category : #'tile factories' }
CCFBasicGame class >> ffrfCloisterTile [
	| field road |
	field := CCFSegment new.
	road := CCFSegment new.
	self flag: 'cloister tile'.

	^ CCFTile
		north: (CCFFieldEdge on: field)
		west:  (CCFFieldEdge on: field)
		south: (CCFRoadEdge on: road between: field and: field)
		east:  (CCFFieldEdge on: field)
]

{ #category : #'tile factories' }
CCFBasicGame class >> frrfTile [
	"Tile V from rule book, 9 available"
	| field road fieldSouthWest |
	field := CCFSegment new.
	road := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	
	^ CCFTile
		north: (CCFFieldEdge on: field)
		west:  (CCFRoadEdge on: road between: fieldSouthWest and: field)
		south: (CCFRoadEdge on: road between: field and: fieldSouthWest)
		east:  (CCFFieldEdge on: field)
]

{ #category : #'tile factories' }
CCFBasicGame class >> frrrTile [
	"Tile W from rule book, 4 available"
	| fieldNorth fieldSouthWest fieldSouthEast |
	fieldNorth := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	fieldSouthEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFFieldEdge on: fieldNorth)
		west:  (CCFRoadEdge on: CCFSegment new between: fieldSouthWest and: fieldNorth)
		south: (CCFRoadEdge on: CCFSegment new between: fieldSouthEast and: fieldSouthWest)
		east:  (CCFRoadEdge on: CCFSegment new between: fieldNorth and: fieldSouthEast)
]

{ #category : #'tile factories' }
CCFBasicGame class >> rfrfTile [
	"Tile U from rule book, 8 available"
	| road fieldWest fieldEast |
	road := CCFSegment new.
	fieldWest := CCFSegment new.
	fieldEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFRoadEdge on: road between: fieldWest and: fieldEast)
		west:  (CCFFieldEdge on: fieldWest)
		south: (CCFRoadEdge on: road between: fieldEast and: fieldWest)
		east:  (CCFFieldEdge on: fieldEast)
]

{ #category : #'tile factories' }
CCFBasicGame class >> rrrrTile [
	"Tile X from rule book, 1 available"
	| fieldNorthWest fieldSouthWest fieldSouthEast fieldNorthEast |
	fieldNorthWest := CCFSegment new.
	fieldSouthWest := CCFSegment new.
	fieldSouthEast := CCFSegment new.
	fieldNorthEast := CCFSegment new.
	
	^ CCFTile
		north: (CCFRoadEdge on: CCFSegment new between: fieldNorthWest and: fieldNorthEast)
		west:  (CCFRoadEdge on: CCFSegment new between: fieldSouthWest and: fieldNorthWest)
		south: (CCFRoadEdge on: CCFSegment new between: fieldSouthEast and: fieldSouthWest)
		east:  (CCFRoadEdge on: CCFSegment new between: fieldNorthEast and: fieldSouthEast)
]

{ #category : #tiles }
CCFBasicGame class >> startingTile [
	self flag: 'starting map?'.
	^ self crfrTile
]

{ #category : #tiles }
CCFBasicGame class >> tileSpecifications [
	^ {
		#ffrfCloister -> 2.
		#ffffCloister -> 4.
		#ccccPennant -> 1.
		#crfr -> 4.
		#cfff -> 5.
		#fcfcPennant -> 2.
		#fcfc -> 1.
		#cfcfCities -> 3.
		#ccffCities -> 2.
		#cfrr -> 3.
		#crrf -> 3.
		#crrr -> 3.
		#ccffPennant -> 2.
		#ccff -> 3.
		#ccrrPennant -> 2.
		#ccrr -> 3.
		#ccfcPennant -> 1.
		#ccfc -> 3.
		#ccrcPennant -> 2.
		#ccrc -> 1.
		#rfrf -> 8.
		#frrf -> 9.
		#frrr -> 4.
		#rrrr -> 1.
	} asDictionary
]

{ #category : #initialization }
CCFBasicGame >> initialize [
	tiles := OrderedCollection new
]
