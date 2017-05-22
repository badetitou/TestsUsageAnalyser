accessing
toSend
	| firstLevel testsClassesCollection |
	
	firstLevel := Dictionary new.
	
	firstLevel at: 'userId' put: author.
	firstLevel at: 'startDate' put: (self formatDate: startDate).
	firstLevel at: 'endDate' put: (self formatDate: endDate).
	
	TestTools isByMethod ifTrue: [ firstLevel at: 'type' put: 'methodSelection' ].
	TestTools isByClass ifTrue: [ firstLevel at: 'type' put: 'classSelection' ].
	TestTools isFromRunner ifTrue: [ firstLevel at: 'type' put: 'testRunner' ].
	
	testsClassesCollection := OrderedCollection new.
	testClasses  do: [ :aMethod | testsClassesCollection add: aMethod forJsonSending ].
	firstLevel at: 'testClasses' put: testsClassesCollection.
	
	^firstLevel.