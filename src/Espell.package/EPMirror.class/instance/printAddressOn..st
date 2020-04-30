gt-inspector-extension
printAddressOn: aStream
	aStream nextPutAll: ' [';
		 nextPutAll: self target address asString;
		 nextPutAll: ']'