accessing-specialObjects
specialObjects
	^ { 
		#nil -> self nilObject.
		#true -> self trueObject.
		#false -> self falseObject }