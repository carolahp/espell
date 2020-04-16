accessing
classPool
	| instSide |
	"We wish this is a classpool dictionary"
	self flag: 'non complete return result'.
	
	rgClass := self asRGClass.
	rgClass ifNil: [ ^self backend nilObject  ].
	instSide := self instanceSide.
	
	^ [instSide instanceVariableAtIndex: self backend instanceVariableMapping classPoolIndex] on: AssertionFailure do: [ backend nilObject ]