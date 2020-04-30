instance creation
newMessageWithSelector: selector arguments: args andLookupClass: lookupClass

	| message |
	message := self environment messageClass basicNew.
	message instanceVariableAtIndex: 1 put: selector.
	message instanceVariableAtIndex: 2 put: args.
	message instanceVariableAtIndex: 3 put: lookupClass.
	^ message