as yet unclassified
testSerialisation4
	| stream reader |
	stream := self data4 readStream.
	reader := STON reader.
	reader acceptUnknownClasses: true.
	[ (reader on: stream) next ]
		ensure: [ stream close ]