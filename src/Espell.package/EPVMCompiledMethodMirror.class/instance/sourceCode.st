accessing
sourceCode
	"^ backend objectSpace sourceCodeManager
		sourceCodeOfMethod: self
		ifAbsent: [ self decompile decompileString ]"

	^ (self methodClass asRGClass localMethods
		select: [ :rgmethod | rgmethod selector = self selector ]) anyOne
		sourceCode