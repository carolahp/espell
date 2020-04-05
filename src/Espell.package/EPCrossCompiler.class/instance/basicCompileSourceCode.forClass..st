private
basicCompileSourceCode: sourceCode forClass: aClass

	| options contextClass |
	options := #().
	contextClass := objectSpace backend interpreter codeProvider systemDefinition classWithRole: #Context.
	aClass className == contextClass name ifTrue: [ options := #(+ optionLongIvarAccessBytecodes) ].
	
	^ (OpalCompiler new
		options: options;
		source: sourceCode;
		class: aClass;
		environment: aClass environment;
		requestor: nil;
		failBlock: [ self error ];
		parse) generate