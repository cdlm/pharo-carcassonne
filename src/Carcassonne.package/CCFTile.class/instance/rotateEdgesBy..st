rotating
rotateEdgesBy: indexShift
	| newEdges |
	newEdges := Array new: 4.
	1 to: 4 do: [ :index |
		newEdges
			atWrap: index + indexShift
			put: (edges at: index) ].
	edges := newEdges