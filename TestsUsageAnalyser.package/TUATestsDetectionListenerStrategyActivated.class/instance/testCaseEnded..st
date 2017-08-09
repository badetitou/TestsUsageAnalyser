private
testCaseEnded: anAnnouncement
	| aTestClass aTestMethod aTestsData |
	aTestsData := self testRunning at: anAnnouncement testResult.
	aTestClass := aTestsData testClasses last.
	aTestMethod := aTestClass testsMethods last.
	aTestMethod endTime: DateAndTime now.
	self testCase: aTestMethod hasEndedStatusFrom: anAnnouncement.
	aTestClass endDate: DateAndTime now