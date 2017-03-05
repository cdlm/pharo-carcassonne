image loading
load: directory size: size padding: padding origin: origin
	(directory filesMatching: '*.png') do: [ :file |
		file readStreamDo: [ :png |
			self
				load: file basenameWithoutExtension
				from: png
				size: size
				padding: padding
				origin: origin ] ]