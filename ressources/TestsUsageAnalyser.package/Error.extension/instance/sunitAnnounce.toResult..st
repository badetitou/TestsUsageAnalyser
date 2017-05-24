*TestsUsageAnalyser
sunitAnnounce: aTestCase toResult: aTestResult
	TestsDetectionListener uniqueInstance testCaseRaiseError: aTestCase.
	aTestResult addError: aTestCase.