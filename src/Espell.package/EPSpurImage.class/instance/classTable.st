accessing-specialObjects
classTable
	| mirror address |
	address := self backend simulator objectMemory classTableFirstPage.
	mirror := EPMirror onAddress: address backend: self backend.
	^ EPRemoteArray on: mirror 