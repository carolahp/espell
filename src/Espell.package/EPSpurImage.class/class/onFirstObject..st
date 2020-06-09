instantiation
onFirstObject: aMirrorOnNil
	self deprecated: 'use EP2SpurImage'.
	"I only need to know the first object: nil"
	^ self new 
		nilObject: aMirrorOnNil;
		yourself