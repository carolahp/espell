*Espell
asRemoteObjectInObjectSpace: anEPObjectSpace 
	
	^ anEPObjectSpace 
			newArrayWithAll: (self collect: [ :each | each asRemoteObjectInObjectSpace: anEPObjectSpace ])