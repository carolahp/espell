accessing
printOn: aStream
	aStream nextPutAll: '#('.
	self associationsDo: [ :assoc |
		aStream nextPutAll: assoc key asLocalLiteral , ' -> ', assoc value asLocalLiteral ].
	aStream nextPutAll: ')'.