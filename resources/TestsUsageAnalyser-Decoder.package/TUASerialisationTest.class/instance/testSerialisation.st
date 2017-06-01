as yet unclassified
testSerialisation
	| stream reader |
	stream := self data readStream.
	reader := STON reader.
	reader acceptUnknownClasses: true.
	[ (reader on: stream) next ]
		ensure: [ stream close ]