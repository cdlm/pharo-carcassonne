singleton
instance
	^ instance ifNil: [ instance := self basicNew ]