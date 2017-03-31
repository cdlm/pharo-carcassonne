drawing
drawOn: aCanvas
	map withIndicesDo: [ :tile :row :column |
		aCanvas
			drawImage: (self textureFor: tile)
			at: (self positionForRow: row column: column) ]