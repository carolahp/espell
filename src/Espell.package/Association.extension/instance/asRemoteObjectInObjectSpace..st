*Espell
asRemoteObjectInObjectSpace: anEPObjectSpace 
	^ anEPObjectSpace 
		newAssociationWithKey: (self key asRemoteObjectInObjectSpace: anEPObjectSpace ) 
		andValue: (self value asRemoteObjectInObjectSpace: anEPObjectSpace)