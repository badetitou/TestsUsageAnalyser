*TestsUsageAnalyser
dispatchResultsIntoHistory 

	self classesTested do: 
		[ :testClass | 
		| aDictionnary |
		aDictionnary := (self selectResultsForTestCase: testClass).
		aDictionnary at: #TUATestResult put: self.
		self class
			historyAt: testClass
			put: aDictionnary .].