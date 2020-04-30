gt-inspector-extension
gtInspectorLayoutIn: composite with: aMirror

	^ composite table
		title: 'VariableSizesWOIV view';
		display: [
			(self allSlotsFor: aMirror) collectWithIndex: [ :slot :i | i -> slot ] ];
		column: 'Index' evaluated: [:each | each key ];
		column: 'Item' evaluated: [ :each | each value ];
		send: #value
	