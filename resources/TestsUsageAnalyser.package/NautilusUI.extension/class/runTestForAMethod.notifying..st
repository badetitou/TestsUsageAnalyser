*TestsUsageAnalyser
runTestForAMethod: aMethod notifying: aBoolean
	| testMethod testClass testResult color |
	(testMethod := aMethod asTestMethod) ifNil: [ ^ self ].
	testClass := testMethod methodClass.
	
	TestsDetectionListener isEnable 
		ifTrue: [ TestTools setByMethod .testResult := testClass debug: testMethod selector.] 
		ifFalse: [ testResult := testClass debug: testMethod selector ].
	aBoolean
		ifFalse: [ ^ self ].
	color := Color gray.
	testResult hasPassed
		ifTrue: [ color := Color green ].
	testResult hasSkipped
		ifTrue: [ color := Color blue lighter lighter].
	testResult hasFailures
		ifTrue: [ color := Color yellow ].
	testResult hasErrors
		ifTrue: [ color := Color red ].
	self
		notifyTitle: 'Test Finished'
		contents: 'Method: ' , testMethod methodClass asString , '>>#' , testMethod selector asString
		color: color