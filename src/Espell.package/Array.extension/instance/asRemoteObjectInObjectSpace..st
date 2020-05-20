*Espell
asRemoteObjectInObjectSpace: anEPObjectSpace 
	
	^ anEPObjectSpace 
			newRemoteArrayWithAll: (self collect: [ :each | each asRemoteObjectInObjectSpace: anEPObjectSpace ])