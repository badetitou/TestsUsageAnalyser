accessing
toJson
	| firstLevel secondLevel thirdLevel fourthLevel testsClassesCollection secondLevel2 |
	secondLevel := OrderedCollection new.
	secondLevel2 := Dictionary new.
	secondLevel add: secondLevel2.
	
	firstLevel := Dictionary new.
	firstLevel at: 'userId' put: author.
	firstLevel at: 'eclipseProjects' put: secondLevel.
	
	fourthLevel := Dictionary new.
	fourthLevel at: 'startDate' put: (self formatDate: startDate).
	fourthLevel at: 'endDate' put: (self formatDate: endDate).
	TestTools isByMethod ifTrue: [ fourthLevel at: 'type' put: 'methodSelection' ].
	TestTools isByClass ifTrue: [ fourthLevel at: 'type' put: 'classSelection' ].
	TestTools isFromRunner ifTrue: [ fourthLevel at: 'type' put: 'testRunner' ].
	
	thirdLevel := OrderedCollection new.
	thirdLevel add: fourthLevel.
	secondLevel2 at: 'name' put: 'patate'.
	secondLevel2 at: 'executions' put: thirdLevel.
	
	testsClassesCollection := OrderedCollection new.
	testClasses  do: [ :aMethod | testsClassesCollection add: aMethod forJsonSending ].
	fourthLevel at: 'testClasses' put: testsClassesCollection.
	
	^firstLevel.