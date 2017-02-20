tests
testCommitSimpleConnectionOfClass: edgeClass
	| edgeA edgeB sa sb |
	sa := CCFSegment new.
	sb := CCFSegment new.
	
	edgeA := edgeClass on: sa.
	edgeB := edgeClass on: sb.
	
	(CCFConnection with: edgeA with: edgeB) commit.
	
	sa extent should be covers: sb.
	sb extent should be: sa extent