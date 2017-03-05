accessing
at: name add: texture
	(textures at: name ifAbsentPut: OrderedCollection new)
		add: texture