interpreting
evaluateCode: someCode withTemps: aCollectionOfTemps
	| result |
	result := self evaluateAST: (self compile: someCode withTemps: aCollectionOfTemps).
	^ result