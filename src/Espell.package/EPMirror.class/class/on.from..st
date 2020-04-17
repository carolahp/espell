instance creation
on: aTargetObject from: aBackend
	| instance |
	instance := self new
		target: aTargetObject;
		backend: aBackend.

	^ instance