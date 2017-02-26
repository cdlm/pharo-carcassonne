instance creation
on: aRoadSegment between: leftFieldSegment and: rightFieldSegment
	"left and right when viewed from inside the tile"
	^ (self on: aRoadSegment)
		left: leftFieldSegment;
		right: rightFieldSegment;
		yourself