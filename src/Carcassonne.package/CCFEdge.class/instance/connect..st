double dispatch
connect: aTileEdge
	self flag: 'rename as match:'.
	^ self subclassResponsibility