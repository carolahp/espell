converting
asRGClass
	self isClassMirror ifTrue: [ ^ self asClassMirror asRGClass ].
	^ nil