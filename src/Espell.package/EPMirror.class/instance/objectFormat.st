accessing-header
objectFormat

	| first32Bytes |
	first32Bytes := self backend memoryManager unsignedLongAt: target address bigEndian: false.
	^ (first32Bytes >> 24) bitAnd: 2r11111