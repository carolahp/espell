gt-inspector-extension
gtInspectorSourceCodeIn: composite with: aMirror
	| mirror |
	mirror := aMirror asMethodMirror.
	^ composite text
		title: 'source code';
		display: [ mirror sourceCode ]