hooks-api
methods
	
	^ self objectSpace newArrayWithAll: (self asRGClass methods collect: [:method | method asRemoteObjectInObjectSpace: self objectSpace]).