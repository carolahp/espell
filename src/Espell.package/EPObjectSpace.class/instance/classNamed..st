class-bootstrap
classNamed: aClassName
	self halt.
	^ [ self environment at: aClassName ] on: Error 
		do: [ (self interpreter environment bootstrapEnvironmentAt: aClassName) ifNil: [ self  nilObject ] ]