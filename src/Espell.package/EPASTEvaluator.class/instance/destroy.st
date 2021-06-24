destroy
destroy
	astCache := nil.
	codeProvider := nil.
	environment ifNotNil: [
		environment destroy.
		environment := nil].
	interpreterClass := nil.
	objectSpace := nil.	