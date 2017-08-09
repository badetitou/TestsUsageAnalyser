initialize
initialize: aTestMethod
	self
		addTestMethod: aTestMethod;
		testName: aTestMethod className;
		startDate: DateAndTime now;
		status: 'PASS'