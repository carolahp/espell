interpreting
evaluateCode: someCode withTemps: aCollectionOfTemps
	| result |
	self announce: (PBReflectiveEvaluationBegins withCode: someCode withTemps: aCollectionOfTemps).
	result := self evaluateAST: (self compile: someCode withTemps: aCollectionOfTemps).
	self announce: (PBReflectiveEvaluationEnds withCode: someCode withTemps: aCollectionOfTemps).
	^ result