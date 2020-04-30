gt-inspector-extension
printOn: aStream
	aStream nextPutAll: self classNameFromAnyOrigin asString.
	self printAddressOn: aStream