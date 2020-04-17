gt-inspector-extension
gtInspector: composite
	<gtInspectorPresentationOrder: 2>
	
	self isClassMirror ifTrue: [ ^ self asClassMirror gtInspectorIn: composite ].
	^ self gtInspectorIn: composite