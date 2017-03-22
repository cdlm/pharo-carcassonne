accessing
at: rowNumber at: columnNumber
	^ tiles
		at: rowNumber at: columnNumber
		ifInvalid: freePlace