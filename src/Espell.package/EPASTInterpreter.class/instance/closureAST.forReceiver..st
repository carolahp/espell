method evaluation
closureAST: aClosure forReceiver: aReceiver
	| astToBind compilationContext |
	
	astCache at: aClosure ifPresent: [ :ast | ^ ast ].
	
	astToBind := aClosure parseTree copyInContext: Dictionary new.
	compilationContext := self class compiler compilationContext.
	compilationContext class: aClosure methodClass.
	compilationContext environment: self environment.
	
	^ astCache at: aClosure put: (astToBind
		compilationContext: compilationContext;
		doSemanticAnalysis).