*TestsUsageAnalyser
sunitAnnounce: aTestCase toResult: aTestResult
	TUATestUsageAnalyser testCaseRaiseHalt: aTestResult.
	aTestResult addHalt: aTestCase