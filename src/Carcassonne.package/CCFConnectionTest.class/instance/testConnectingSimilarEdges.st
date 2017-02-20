tests
testConnectingSimilarEdges
	(CCFGrassEdge new connect: CCFGrassEdge new) should be isLegal.
	(CCFRoadEdge new connect: CCFRoadEdge new) should be isLegal.
	(CCFTownEdge new connect: CCFTownEdge new) should be isLegal.