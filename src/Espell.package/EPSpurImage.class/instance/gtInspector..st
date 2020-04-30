gt-extension
gtInspector: composite
	<gtInspectorPresentationOrder: 1>
	
	^ composite tree
		rootsExpanded;
		title: 'Image';
		display: [ self allSlots collect: [:arr | (arr at:2) ] ];
		children: [ :each | each allSlots ]";
		send: #self"