*TestsUsageAnalyser-Decoder
materialize: aByteArray
	| stream gzstream reader |
	stream := aByteArray asString readStream.
	gzstream := GZipReadStream on: stream.
	reader := STON reader.
	reader acceptUnknownClasses: true.
	^ [ (reader on: gzstream) next ] ensure: [ gzstream close. stream close ]