accessing
default
	^ self new
		load: (FileLocator imageDirectory / 'textures')
		size: 174@174
		padding: 1@1
		origin: 0@0;
		yourself