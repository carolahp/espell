testing
isClassMirror
	| maybeMetaclass isClass |
	" if the target is not a pointer to an address then the mirror is not a class "
	target isAddressHandle ifFalse: [ ^false ].
	" if the mirror is the nil object then it's not a class mirror "
	target isAddressOfNil ifTrue: [ ^false ].
	" If the basicClass message fails then the mirror is the stub of an object that is not a class because we generate class stubs pointing to their metaclass " 
	[ maybeMetaclass := self basicClass basicClass ] on: Error do: [ ^ false ].
	" If the metaclass is the nil object then the mirror is the stub of an object "
	maybeMetaclass target isAddressOfNil ifTrue: [ ^false ].
	isClass := [self systemDefinition metaclassesNames contains: [ :metaclass | metaclass = maybeMetaclass classNameFromAnyOrigin ]] on: Error do: [ self halt ].
	^ isClass