tests
testConnectingIncompatibleEdges
	(CCFGrassEdge new connect: CCFRoadEdge new) should not be isLegal.
	(CCFGrassEdge new connect: CCFCityEdge new) should not be isLegal.
	(CCFRoadEdge new connect: CCFGrassEdge new) should not be isLegal.
	(CCFRoadEdge new connect: CCFCityEdge new) should not be isLegal.
	(CCFCityEdge new connect: CCFGrassEdge new) should not be isLegal.
	(CCFCityEdge new connect: CCFRoadEdge new) should not be isLegal.