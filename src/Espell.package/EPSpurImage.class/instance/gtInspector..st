gt-extension
gtInspector: composite
	<gtInspectorPresentationOrder: 1>
	
	^ composite tree
		rootsExpanded;
		title: 'Image';
		display: [self allSlots ];
		children: 
			[ :each | [each allSlots] 
					on: Error 
					do: [ "this is for the case where 'each' is an Association" each value allSlots ] ]";
		send: #self"