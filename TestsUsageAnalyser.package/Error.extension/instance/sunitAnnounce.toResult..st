*TestsUsageAnalyser
sunitAnnounce: aTestCase toResult: aTestResult
	TUATestUsageAnalyser testCaseRaiseError: aTestResult.
	aTestResult addError: aTestCase