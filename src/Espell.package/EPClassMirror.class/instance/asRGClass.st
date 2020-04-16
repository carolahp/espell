converting
asRGClass
	^ rgClass ifNil: [rgClass := self builder systemDefinitionAt: self classNameFromAnyOrigin]