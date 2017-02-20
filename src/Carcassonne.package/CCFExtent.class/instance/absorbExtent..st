merging
absorbExtent: anExtent
	anExtent segmentsDo: [ :each | self adoptSegment: each ]