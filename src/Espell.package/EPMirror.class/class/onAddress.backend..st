instantiation
onAddress: address backend: anEPSimulatorBackend 
	| handle |
	handle := EPSimulatorAddressHandle new address: address; backend: anEPSimulatorBackend.
	^ self on: handle from: anEPSimulatorBackend