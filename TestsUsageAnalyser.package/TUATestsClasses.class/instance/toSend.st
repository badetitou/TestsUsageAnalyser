accessing
toSend
	| aDictionnary |
	aDictionnary := Dictionary new.
	aDictionnary
		at: 'name' put: testName;
		at: 'status' put: status;
		at: 'duration' put: (self endDate - self startDate) totalSeconds asFloat;
		at: 'testMethods' put: (self testsMethods collect: #toSend).
	^ aDictionnary