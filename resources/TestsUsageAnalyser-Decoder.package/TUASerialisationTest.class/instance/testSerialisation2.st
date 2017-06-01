as yet unclassified
testSerialisation2
	| stream reader |
	stream := self data2 readStream.
	reader := STON reader.
	reader acceptUnknownClasses: true.
	[ (reader on: stream) next ]
		ensure: [ stream close ]