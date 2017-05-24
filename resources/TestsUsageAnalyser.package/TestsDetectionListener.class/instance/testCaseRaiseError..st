accessing
testCaseRaiseError: aTestCase
	| aTestClass aTestMethod |
	aTestClass := TestsData uniqueInstance testClasses
		at: TestsData uniqueInstance testClasses size.
	aTestMethod := aTestClass testsMethods at: aTestClass testsMethods size.
	aTestMethod endTime: DateAndTime now.
	aTestMethod status: 'ERROR'.
	aTestClass endDate: DateAndTime now