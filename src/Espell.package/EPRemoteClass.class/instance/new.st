remote-instantiation
new
self halt.
	^ self interpreter evaluateCode: 'aClass new' withTemps: { 'aClass' -> self mirror }