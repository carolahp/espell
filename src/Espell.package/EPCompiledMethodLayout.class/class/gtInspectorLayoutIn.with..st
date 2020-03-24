gt-inspector-extension
gtInspectorLayoutIn: composite with: aMirror
	| mirror |
	mirror := aMirror asMethodMirror.
	^ composite text
		title: 'Compiled Method Header view';
		display: [ mirror asString, Character cr asString, mirror headerDescription ]