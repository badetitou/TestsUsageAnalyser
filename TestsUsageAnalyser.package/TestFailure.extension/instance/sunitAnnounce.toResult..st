*TestsUsageAnalyser
sunitAnnounce: aTestCase toResult: aTestResult
	TUATestUsageAnalyser testCaseFailled: aTestResult.
	aTestResult addFailure: aTestCase