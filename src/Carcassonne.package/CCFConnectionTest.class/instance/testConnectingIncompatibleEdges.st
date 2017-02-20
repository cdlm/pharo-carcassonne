tests
testConnectingIncompatibleEdges
	(CCFGrassEdge new connect: CCFRoadEdge new) should not be isLegal.
	(CCFGrassEdge new connect: CCFTownEdge new) should not be isLegal.
	(CCFRoadEdge new connect: CCFGrassEdge new) should not be isLegal.
	(CCFRoadEdge new connect: CCFTownEdge new) should not be isLegal.
	(CCFTownEdge new connect: CCFGrassEdge new) should not be isLegal.
	(CCFTownEdge new connect: CCFRoadEdge new) should not be isLegal.