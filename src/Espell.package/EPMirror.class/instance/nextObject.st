accessing-header
nextObject
	| nextAddress addressHandle |
	nextAddress := self memoryManager objectAfter: self target address.
	addressHandle := EPSimulatorAddressHandle new 
		address: nextAddress; 
		backend: self backend; 
		yourself.
 
	^ EPMirror 
		on: addressHandle
		from: self backend