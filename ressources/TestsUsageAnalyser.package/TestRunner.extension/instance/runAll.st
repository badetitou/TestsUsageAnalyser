*TestsUsageAnalyser
runAll

	self resetResult.
	TestsDetectionListener isEnable ifTrue: [ 
		TestsData testSuite: self allSelectedTestSuites ].
	self runTestSuites: self allSelectedTestSuites.
	self saveResultInHistory