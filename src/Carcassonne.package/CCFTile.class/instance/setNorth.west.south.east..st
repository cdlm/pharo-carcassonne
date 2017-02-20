initialization
setNorth: northEdge west: westEdge south: southEdge east: eastEdge
	northEdge tile: self.
	westEdge tile: self.
	southEdge tile: self.
	eastEdge tile: self.
	
	edges := { northEdge. westEdge. southEdge. eastEdge }