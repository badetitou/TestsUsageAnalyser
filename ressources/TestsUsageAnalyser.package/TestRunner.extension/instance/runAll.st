*TestsUsageAnalyser
runAll

	self resetResult.
	TestsDetectionListener isEnable ifTrue: [ 
		TestsData testSuite: self suiteForAllSelected tests ].
	self runTestSuites: self allSelectedTestSuites.
	self saveResultInHistory