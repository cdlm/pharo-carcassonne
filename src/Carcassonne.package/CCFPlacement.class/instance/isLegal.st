testing
isLegal
	^ (connections allSatisfy: #isLegal)
		and: [ connections anySatisfy: [ :it | it isPeriphery not ] ]