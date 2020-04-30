gt-inspector-extension
printOn: aStream
	aStream 
		nextPutAll: self classNameFromAnyOrigin asString; 
		nextPutAll: ' ('; 
		nextPutAll: self target address asString; 
		nextPutAll: ')'