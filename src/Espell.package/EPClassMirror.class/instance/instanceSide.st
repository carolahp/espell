accessing
instanceSide
	^ self asRGClass isInstanceSide 
		ifTrue: [ self ] 
		ifFalse: [ (self instanceVariableAtIndex: self backend instanceVariableMapping metaclassThisClassIndex) asClassMirror]. "soleInstance of Metaclass"