gt-extension
gtInspector: composite
	<gtInspectorPresentationOrder: 1>
	self haltOnce.
	^ composite tree
		rootsExpanded;
		title: 'Image';
		display: [ {self} ];
		children: [ :each | each value allObjects ];
		send: #value