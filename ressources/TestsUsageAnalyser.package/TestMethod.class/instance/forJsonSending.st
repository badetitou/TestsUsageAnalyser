accessing
forJsonSending
	| aMethod |
	aMethod := Dictionary  new.
	aMethod at: 'name' put: testName.
	aMethod at: 'status' put: status .
	status ifNil: [ aMethod at: 'status' put: 'FAILLED' . self endTime: DateAndTime now. ].
	aMethod at: 'duration' put: ( endTime - startTime ) totalSeconds asFloat .
	^aMethod.