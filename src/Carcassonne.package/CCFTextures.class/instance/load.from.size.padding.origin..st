image loading
load: textureName from: imageStream size: size padding: padding origin: origin
	| form |
	form := ImageReadWriter formFromStream: imageStream.
	
	origin x to: form width - size x by: size x + padding x do: [ :x |
	   origin y to: form height - size y by: size y + padding y do: [ :y |
	      self
				at: textureName
				add: (form copy: (x@y extent: size)) ] ]