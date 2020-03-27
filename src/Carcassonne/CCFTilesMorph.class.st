Class {
	#name : #CCFTilesMorph,
	#superclass : #Morph,
	#instVars : [
		'map',
		'textures'
	],
	#category : 'Carcassonne-UI'
}

{ #category : #'instance creation' }
CCFTilesMorph class >> on: aMap [
	^ self new
		setMap: aMap;
		yourself
]

{ #category : #drawing }
CCFTilesMorph >> drawOn: aCanvas [
	map withIndicesDo: [ :tile :row :column |
		aCanvas
			drawImage: (self textureFor: tile)
			at: (self positionForRow: row column: column) ]
]

{ #category : #initialization }
CCFTilesMorph >> initialize [
	super initialize.
	textures := CCFTextures default.
	self
		color: Color gray;
		extent: 174@174
]

{ #category : #drawing }
CCFTilesMorph >> positionForRow: row column: column [
	^ (row - 1 * 174) @ (column - 1 * 174)
]

{ #category : #initialization }
CCFTilesMorph >> setMap: aMap [
	map := aMap.
	self extent: map extent * 174
]

{ #category : #accessing }
CCFTilesMorph >> textureFor: aTile [
	^ textures at: aTile name
]
