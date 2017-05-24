accessing
forJsonSending
	| level4 testsMethodsCollection |
	level4 := Dictionary new.
	level4 at: 'name' put: testName.


	level4 at: 'status' put: status.

	level4 at: 'duration' put: (endDate - startDate) totalSeconds asFloat .
	testsMethodsCollection := OrderedCollection new.
	testsMethods do: [ :aMethod | testsMethodsCollection add: aMethod forJsonSending ].
	level4 at: 'testMethods' put: testsMethodsCollection.
	^level4.	