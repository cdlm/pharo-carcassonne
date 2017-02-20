tests
testCommitRoadConnection
	| edgeA edgeB sa sal sar sb sbl sbr |
	sa := CCFSegment new.
	sal := CCFSegment new.
	sar := CCFSegment new.
	sb := CCFSegment new.
	sbl := CCFSegment new.
	sbr := CCFSegment new.
	
	edgeA := CCFRoadEdge on: sa between: sal and: sar.
	edgeB := CCFRoadEdge on: sb between: sbl and: sbr.
	
	(CCFConnection with: edgeA with: edgeB) commit.
	
	{ sa. sb. sal. sbr. sar. sbl } pairsDo: [ :a :b |
		a extent should be covers: b.
		b extent should be: a extent ]
