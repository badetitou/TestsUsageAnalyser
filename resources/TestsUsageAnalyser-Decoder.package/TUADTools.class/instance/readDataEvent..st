as yet unclassified
readDataEvent: aGTEventAnnouncement
	| aByteArray stream gzstream |
	aByteArray := (aGTEventAnnouncement at: #data).
	stream := aByteArray asString readStream.
	gzstream := GZipReadStream on: stream.
	^gzstream contents