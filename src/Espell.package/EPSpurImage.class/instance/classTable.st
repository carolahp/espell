accessing-specialObjects
classTable
	| classes |
	classes := #() asOrderedCollection.
	self backend simulator objectMemory classTableObjectsDo: [ :classOop | classes add: (EPClassMirror onAddress: classOop backend: self backend) ].
	classes sort: [ :c1 :c2 | c1 classNameFromAnyOrigin < c2 classNameFromAnyOrigin ].
	^ classes asArray asRemoteObjectInObjectSpace: self objectSpace