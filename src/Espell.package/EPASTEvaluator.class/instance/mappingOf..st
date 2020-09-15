class-maps
"class-maps"
mappingOf: anObject
self flag: 'method changes for compatibility with Espell2'.
	(({EPSimulatorExternalObjectHandle . 
	   EP2ExternalObjectHandle } 
		indexOf: anObject target species) > 0 ) ifTrue: [
		
			anObject target object == ASTBlockClosure ifTrue: [ ^ ASTBlockClosure ].
			anObject target object == RBBlockNode ifTrue: [ ^ RBBlockNode ].
			anObject target object == OrderedCollection ifTrue: [ ^ OrderedCollection ].
			anObject target object == SmallInteger ifTrue: [ ^ SmallInteger ].
			"DASTInterpreter"
			anObject target object == DASTBlock ifTrue: [ ^ DASTBlock ].
			anObject target object == DASTMethod ifTrue: [ ^ DASTMethod ].
			"anObject target object == DASTContext ifTrue: [ ^ DASTContext ]."
		].
	
	^ codeProvider classForClassMirror: anObject