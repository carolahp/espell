accessing-cached
metaclassesNames
	| metaclass metaclassClass |
	metaclass := self interpreter environment systemDefinition classWithRole: 'Metaclass'.
	metaclassClass := metaclass metaclass.
	^ { metaclass name . metaclassClass name }