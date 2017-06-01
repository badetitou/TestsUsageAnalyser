as yet unclassified
testSerialisation3
	| stream reader |
	stream := self data3 readStream.
	reader := STON reader.
	reader acceptUnknownClasses: true.
	[ (reader on: stream) next ]
		ensure: [ stream close ]