accessing
placementFor: aTile at: rowNumber at: columnNumber
	^ aTile placement
		northward: (self at: rowNumber - 1 at: columnNumber);
		westward:  (self at: rowNumber     at: columnNumber - 1);
		southward: (self at: rowNumber + 1 at: columnNumber);
		eastward:  (self at: rowNumber     at: columnNumber + 1)