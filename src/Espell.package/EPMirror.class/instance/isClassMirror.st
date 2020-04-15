testing
isClassMirror
	| metaclass metaclassClass |
	metaclass := backend interpreter environment systemDefinition classWithRole: 'Metaclass'.
	metaclassClass := metaclass metaclass.
	^ ({metaclass name. metaclassClass name} indexOf: self asClassMirror basicClass basicClass classNameFromAnyOrigin) > 0