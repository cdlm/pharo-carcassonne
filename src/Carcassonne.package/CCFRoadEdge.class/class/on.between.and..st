instance creation
on: aRoadSegment between: leftField and: rightField
	"left and right when viewed from inside the tile"
	^ (self on: aRoadSegment)
		setLeft: leftField right: rightField;
		yourself