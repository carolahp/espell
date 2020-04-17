gt-inspector-extension
instSpecDescription
	
	^ self instSpecDescriptions at: self instSpec ifAbsent: [ 'Old ilegal format' ]
