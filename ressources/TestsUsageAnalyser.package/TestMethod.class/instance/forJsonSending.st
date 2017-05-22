accessing
forJsonSending
	| aMethod |
	aMethod := Dictionary  new.
	aMethod at: 'name' put: testName.
	aMethod at: 'status' put: status . 
	aMethod at: 'duration' put: ( endTime - startTime ) totalSeconds asFloat .
	^aMethod.