testing
isClassMirror
	| metaclassesNames maybeMetaclass |
	
	metaclassesNames := backend metaclassesNames.
	maybeMetaclass := [ self asClassMirror basicClass basicClass ] on:Error do: [ ^ false ].
	maybeMetaclass isNilObject ifTrue: [ ^false ].
	^ (metaclassesNames indexOf:  maybeMetaclass classNameFromAnyOrigin) > 0