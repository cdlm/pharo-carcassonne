initialization
initialize
	freePlace := CCFFreePlace new.
	tiles := Matrix
		rows: 3
		columns: 3
		element: freePlace