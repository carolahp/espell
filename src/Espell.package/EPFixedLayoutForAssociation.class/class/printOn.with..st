printing
printOn: aStream with: aMirror
	aStream
		nextPutAll: '( ';
		nextPutAll: (aMirror instanceVariableAtIndex: aMirror backend instanceVariableMapping associationKeyIndex) asString;
		nextPutAll: '  ->  ';
		nextPutAll: (aMirror instanceVariableAtIndex: aMirror backend instanceVariableMapping associationValueIndex) asString;
		nextPutAll: ' )'