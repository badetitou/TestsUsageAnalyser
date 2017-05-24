*TestsUsageAnalyser
sunitAnnounce: aTestCase toResult: aTestResult
	TestsDetectionListener uniqueInstance testCaseFailled: aTestCase.
	aTestResult addFailure: aTestCase.