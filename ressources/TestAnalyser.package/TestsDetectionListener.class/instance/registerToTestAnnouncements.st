accessing
registerToTestAnnouncements
	TestsData uniqueInstance initialize.
	self class TAAnnouncer weak 
		when: TestCaseStarted send: #testCaseStarted: to: self;
		when: TestCaseEnded send: #testCaseEnded: to: self;
		when: TestCaseSkipped send: #testCaseSkipped: to: self.
	TestCase historyAnnouncer weak
		when: TestSuiteEnded send: #testRan: to: self.