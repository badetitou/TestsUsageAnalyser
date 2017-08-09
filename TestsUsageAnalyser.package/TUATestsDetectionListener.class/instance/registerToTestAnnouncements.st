announcement registration
registerToTestAnnouncements
	self class TAAnnouncer unsubscribe: self tuaTestsDetectionListenerStrategy.
	self testCaseHistoryAnnouncer unsubscribe: self tuaTestsDetectionListenerStrategy.
	self class TAAnnouncer weak
		when: TestCaseStarted send: #testCaseStarted: to: self tuaTestsDetectionListenerStrategy;
		when: TestCaseEnded send: #testCaseEnded: to: self tuaTestsDetectionListenerStrategy.
	self testCaseHistoryAnnouncer weak
		when: TestSuiteEnded
		send: #testRan:
		to: self tuaTestsDetectionListenerStrategy