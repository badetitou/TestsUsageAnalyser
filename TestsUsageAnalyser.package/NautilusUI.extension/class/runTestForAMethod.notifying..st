*TestsUsageAnalyser
runTestForAMethod: aMethod notifying: aBoolean
	| testMethod testClass testResult color |
	(aMethod isTestMethod
		ifTrue: [ testMethod := aMethod ]
		ifFalse: [ testMethod := aMethod correspondingTestMethod ]) ifNil: [ ^ self ].
	testClass := testMethod methodClass.
	TUATestTools setByMethod.
	testResult := testClass debug: testMethod selector.
	aBoolean
		ifFalse: [ ^ self ].
	color := Color gray.
	testResult hasPassed
		ifTrue: [ color := Color green ].
	testResult hasSkipped
		ifTrue: [ color := Color blue lighter lighter ].
	testResult hasFailures
		ifTrue: [ color := Color yellow ].
	testResult hasErrors
		ifTrue: [ color := Color red ].
	self notifyTitle: 'Test Finished' contents: 'Method: ' , testMethod methodClass asString , '>>#' , testMethod selector asString color: color