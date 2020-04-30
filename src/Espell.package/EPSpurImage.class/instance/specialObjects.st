accessing-specialObjects
specialObjects
	^ { 
		#nil -> self nilObject.
		#true -> self trueObject.
		#false -> self falseObject.
		#'Special Object Array' -> self specialObjectsArray.
		#'Class Table' -> ([self classTable] on: AssertionFailure do: [self nilObject]).
		"#'Active Process' -> self activeProcess.
		#'Globals' -> self globals"
		}