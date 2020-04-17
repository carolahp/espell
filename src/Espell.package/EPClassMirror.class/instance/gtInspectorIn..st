gt-inspector-extension
gtInspectorIn: composite
	
	^composite table
		title: 'a ClassMirror';
		display: [ | ringClass mirrorSuperclass mirrorMethodDict instanceDescriptions |
			ringClass := self asRGClass.
			mirrorSuperclass := self superclass.
			mirrorMethodDict := self methodDictionary.
			instanceDescriptions := ringClass parent instSpecDescriptions.
			self halt .
			{				
				{ 'name' . ringClass name . self className }.
				{ 'superclass' . ringClass superclass name . mirrorSuperclass ifNil: [ nil ] ifNotNil: [ :ms | ms className ] }.
				{ 'methodDictionary' . 
					ringClass localMethods . 
					mirrorMethodDict 
						ifNil: [ nil ] 
						ifNotNil: [ :md | 
							md isNilObject 
								ifTrue: [ md asString ] 
								ifFalse: [ :mdic | mdic asLocalArray ]  ] }.
				{ 'format' . ringClass format . self format }.
				{ 'instSpec' . ringClass instSpec . self instSpec }.
				{ 'instSpecDescription' . 
					instanceDescriptions at: ringClass instSpec ifAbsent: [ nil ] .
					instanceDescriptions at: self instSpec ifAbsent: [ nil ]
				}.
				{ 'instSize' .  ringClass instSize . self instSize }.
				{ 'hash' . '-'. self identityHash asString }.
			 } ];
		column: 'property' evaluated: [:each | each at: 1];
		column: 'value in definition' evaluated: [:each | each at: 2];
		column: 'value in mirror' evaluated: [:each | each at: 3];
		send: #value
		"
	| cr sclass |
			sclass := self basicClass superclass.
			cr := Character cr asString.
			self classNameWithOrigin, cr,
			'hash: ',self identityHash asString, cr,
			'Superclass: ', (sclass isNilObject ifTrue: [ sclass asString ] ifFalse: [ sclass asClassMirror classNameFromAnyOrigin asString ]), cr,
			'instSpec: ', self instSpec asString, ' = ', self instSpecDescription, cr,
			'instSize: ', self instSize asString, cr,  
			'format: ', self format asString , cr"