connecting
commitConnection: facingEdge
	super commitConnection: facingEdge.
	self left mergeExtentsWith: facingEdge right.
	self right mergeExtentsWith: facingEdge left