instance creation
on: aTargetObject from: aBackend
	| instance |
	instance := self new
		target: aTargetObject;
		backend: aBackend.
	"Return class mirror when appropriate"
	"instance isClassMirror ifTrue: [
		instance := instance asClassMirror ]."

	^ instance