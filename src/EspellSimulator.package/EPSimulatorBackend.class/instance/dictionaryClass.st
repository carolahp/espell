special-classes
dictionaryClass
	^ self interpreter environment bootstrapEnvironment at: (self interpreter codeProvider systemDefinition classDictionary) name