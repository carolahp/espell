instance creation
on: aTargetObject from: aBackend
	| mirror metaclassesNames maybeMetaclass isClassMirror |
	
	"self haltOnce."
	metaclassesNames := aBackend metaclassesNames.
	mirror := self new
		target: aTargetObject;
		backend: aBackend.
	isClassMirror := false.
	
	maybeMetaclass := [ mirror asClassMirror basicClass basicClass ] on:Error do: [ nil ].
	(maybeMetaclass isNotNil and: [
		(maybeMetaclass target address = aBackend simulator objectSpace nilObject) not ]) 
		ifTrue: [ isClassMirror := (metaclassesNames indexOf:  maybeMetaclass classNameFromAnyOrigin) > 0].
	
	^ isClassMirror 
		ifTrue: [ mirror asClassMirror ]
		ifFalse: [ mirror ]