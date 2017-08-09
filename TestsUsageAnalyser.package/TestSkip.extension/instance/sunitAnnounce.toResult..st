*TestsUsageAnalyser
sunitAnnounce: aTestCase toResult: aTestResult
	TUATestUsageAnalyser testCaseSkipped: aTestResult.
	aTestResult addSkip: aTestCase