accessing
printOn: aStream
	aStream nextPutAll: '#('.
	self associationsDo: [ :assoc |
		aStream nextPutAll: assoc asString ].
	aStream nextPutAll: ')'.