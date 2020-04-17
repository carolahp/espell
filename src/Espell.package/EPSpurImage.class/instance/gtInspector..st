gt-extension
gtInspector: composite
	<gtInspectorPresentationOrder: 1>
	^ composite table
		title: 'Image';
		display: [ 
			self specialObjects collect: [ :assoc | assoc  ] ];
		column: 'Index' evaluated: [:each |  each key ];
		column: 'Value' evaluated: [ :each | each value ];
		send: #value