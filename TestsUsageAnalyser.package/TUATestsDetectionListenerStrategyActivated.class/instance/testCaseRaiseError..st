private
testCaseRaiseError: aTestResult
	| aTestClass aTestMethod aTestsData |
	aTestsData := self testRunning at: aTestResult.
	aTestClass := aTestsData testClasses last.
	aTestMethod := aTestClass testsMethods last.
	aTestMethod endTime: DateAndTime now.
	aTestMethod status: 'ERROR'.
	aTestClass endDate: DateAndTime now.
	aTestClass status: 'ERROR'