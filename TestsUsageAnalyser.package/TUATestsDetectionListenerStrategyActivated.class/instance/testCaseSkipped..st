private
testCaseSkipped: aTestResult


	| aTestMethod aTestClass aTestsData |
	aTestsData := self testRunning at: aTestResult.
	aTestClass := aTestsData testClasses last.
	aTestClass endDate: DateAndTime now.
	aTestMethod := aTestClass testsMethods last.
	aTestMethod endTime: DateAndTime now.
	aTestMethod status: 'SKIPPED'