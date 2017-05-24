accessing
testCaseFailled: aTestcase
	| aTestClass aTestMethod |
	aTestClass := TestsData uniqueInstance testClasses
		at: TestsData uniqueInstance testClasses size.
	aTestMethod := aTestClass testsMethods at: aTestClass testsMethods size.
	aTestMethod endTime: DateAndTime now.
	aTestMethod status: 'FAILLED'.
	aTestClass endDate: DateAndTime now.