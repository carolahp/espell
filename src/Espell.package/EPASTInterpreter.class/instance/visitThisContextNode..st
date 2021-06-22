visiting
visitThisContextNode: thisContextNode
	^ evaluator objectSpace backend mirrorOnExternalHandle: (super visitThisContextNode: thisContextNode)