testing
isLegal
	^ northward isLegal	and:
		[ westward isLegal and:
			[ southward isLegal and:
				[ eastward isLegal ]]]