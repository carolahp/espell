gt-inspector-extension
gtInspectorLayoutIn: composite with: aMirror
	| mirror cr |
	mirror := aMirror asMethodMirror.
	cr := Character cr asString.
	^ composite text
		title: 'Compiled Method Header and Body';
		display: [ mirror asString, cr, mirror headerDescription, cr,cr, 
			
			mirror literals asString, cr, cr,
			mirror sourceCode asString ]