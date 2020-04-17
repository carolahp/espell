gt-inspector-extension
allSlotsFor: aMirror
	
	^ (1 to: aMirror basicSize) collect: [ :i | i -> (aMirror at: i)]