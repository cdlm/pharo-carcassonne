tests
testConnectingSimilarEdges
	(CCFFieldEdge new connect: CCFFieldEdge new) should be isLegal.
	(CCFRoadEdge new connect: CCFRoadEdge new) should be isLegal.
	(CCFCityEdge new connect: CCFCityEdge new) should be isLegal.