*TestsUsageAnalyser
sunitAnnounce: aTestCase toResult: aTestResult
	TestsDetectionListener isEnable ifTrue: [ 
		TestsDetectionListener uniqueInstance testCaseRaiseError: aTestCase.
	]
	aTestResult addError: aTestCase.