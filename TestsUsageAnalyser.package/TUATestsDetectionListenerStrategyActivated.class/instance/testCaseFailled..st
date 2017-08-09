private
testCaseFailled: aTestResult
	| aTestClass aTestMethod aTestsData |
	aTestsData := self testRunning at: aTestResult.
	aTestClass := aTestsData testClasses last.
	aTestMethod := aTestClass testsMethods last.
	aTestMethod endTime: DateAndTime now.
	aTestMethod status: 'FAIL'.
	aTestClass endDate: DateAndTime now