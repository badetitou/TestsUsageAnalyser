*TestsUsageAnalyser
runAll
	TUATestTools setByTestRunner. self resetResult.
	self runTestSuites: self allSelectedTestSuites.
	self saveResultInHistory