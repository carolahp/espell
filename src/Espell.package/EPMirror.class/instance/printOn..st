gt-inspector-extension
printOn: aStream
	
	self isNilObject ifTrue:   [ ^ aStream nextPutAll:'aNil'  ].
	self isTrueObject ifTrue:  [ ^ aStream nextPutAll: 'aTrue' ].
	self isFalseObject ifTrue: [ ^ aStream nextPutAll: 'aFalse' ].
	
	self isSmallInteger ifTrue: [ ^ aStream nextPutAll: self asSmallInteger asString ].
	self isClassMirror ifTrue: [ ^ self asClassMirror printOn: aStream ].
	self basicClass layout printOn: aStream with: self.
	self printAddressOn: aStream