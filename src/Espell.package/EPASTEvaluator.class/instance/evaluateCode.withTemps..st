interpreting
evaluateCode: someCode withTemps: aCollectionOfTemps
	| temps |
	temps := aCollectionOfTemps collect: [ :assoc | assoc key -> (assoc value asRemoteObjectInObjectSpace: self objectSpace)].
	
	^ self evaluateAST: (self compile: someCode withTemps: temps).
	