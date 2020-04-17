gt-inspector-extension
printOn: aStream
	self isClassMirror ifTrue: [ | mirror | 
		mirror := self asClassMirror.
		mirror printOn: aStream.
		^ mirror].
	self isNilObject ifTrue:   [ aStream nextPutAll:'aNil'. ^self  ].
	self isTrueObject ifTrue:  [ aStream nextPutAll: 'aTrue'. ^self ].
	self isFalseObject ifTrue: [ aStream nextPutAll: 'aFalse'. ^self ].
	
	self isSmallInteger ifTrue: [ aStream nextPutAll: self asSmallInteger asString. ^self ].
	
	self basicClass layout printOn: aStream with: self