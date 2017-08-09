accessing
toSend
	| aDictionnary |
	aDictionnary := Dictionary new.
	aDictionnary
		at: 'name' put: self testName;
		at: 'status' put: self status;
		at: 'duration' put: (self endTime - self startTime) totalSeconds asFloat.
	^ aDictionnary