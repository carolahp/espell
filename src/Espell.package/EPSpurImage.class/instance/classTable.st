accessing-specialObjects
classTable
	| classes |
	classes := #() asOrderedCollection.
	self backend simulator objectMemory 
		classTableObjectsDoWithIndex: [ :classOop :index | 
			classes add: { index . (EPClassMirror onAddress: classOop backend: self backend) } ].
	classes sort: [ :c1 :c2 | ((c1 at:2) classNameFromAnyOrigin) < ((c2 at:2) classNameFromAnyOrigin) ].
	^ classes asArray asRemoteObjectInObjectSpace: self objectSpace