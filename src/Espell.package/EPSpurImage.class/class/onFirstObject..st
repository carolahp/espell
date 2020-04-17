instantiation
onFirstObject: aMirrorOnNil
	"I only need to know the first object: nil"
	^ self new 
		nilObject: aMirrorOnNil;
		yourself