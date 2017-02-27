tests
testConnectingIncompatibleEdges
	(CCFFieldEdge new connect: CCFRoadEdge new) should not be isLegal.
	(CCFFieldEdge new connect: CCFCityEdge new) should not be isLegal.
	(CCFRoadEdge new connect: CCFFieldEdge new) should not be isLegal.
	(CCFRoadEdge new connect: CCFCityEdge new) should not be isLegal.
	(CCFCityEdge new connect: CCFFieldEdge new) should not be isLegal.
	(CCFCityEdge new connect: CCFRoadEdge new) should not be isLegal.