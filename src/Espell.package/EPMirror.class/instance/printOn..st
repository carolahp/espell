gt-inspector-extension
printOn: aStream
	self isClassMirror ifTrue: [ | mirror | 
		mirror := EPClassMirror on: self target from: self backend.
		mirror printOn: aStream.
		^ mirror].
	self isNilObject ifTrue:   [ aStream nextPutAll:'nil'. ^self  ].
	self isTrueObject ifTrue:  [ aStream nextPutAll: 'true'. ^self ].
	self isFalseObject ifTrue: [ aStream nextPutAll: 'false'. ^self ].
	
	self basicClass layout printOn: aStream with: self