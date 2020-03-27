Class {
	#name : #CCFTextures,
	#superclass : #Object,
	#instVars : [
		'textures'
	],
	#category : 'Carcassonne-UI'
}

{ #category : #accessing }
CCFTextures class >> default [
	"All images must have matching dimension & origin/padding parameters"
	^ self new
		load: (FileLocator imageDirectory / 'textures')
		size: 174@174
		padding: 1@1
		origin: 0@0;
		yourself
]

{ #category : #accessing }
CCFTextures >> at: name [
	^ textures
		at: name
		ifAbsentPut: OrderedCollection new
]

{ #category : #accessing }
CCFTextures >> at: name add: texture [
	(textures at: name ifAbsentPut: OrderedCollection new)
		add: texture
]

{ #category : #initialization }
CCFTextures >> initialize [
	super initialize.
	textures := Dictionary new
]

{ #category : #'image loading' }
CCFTextures >> load: textureName from: imageStream size: size padding: padding origin: origin [
	| form |
	form := ImageReadWriter formFromStream: imageStream.
	
	origin x to: form width - size x by: size x + padding x do: [ :x |
	   origin y to: form height - size y by: size y + padding y do: [ :y |
	      self
				at: textureName
				add: (form copy: (x@y extent: size)) ] ]
]

{ #category : #'image loading' }
CCFTextures >> load: directory size: size padding: padding origin: origin [
	(directory filesMatching: '*.png') do: [ :file |
		file readStreamDo: [ :png |
			self
				load: file basenameWithoutExtension
				from: png
				size: size
				padding: padding
				origin: origin ] ]
]
