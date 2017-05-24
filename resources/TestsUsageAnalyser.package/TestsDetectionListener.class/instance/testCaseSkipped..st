private
testCaseSkipped: anAnnouncement
	"Some staff"
	| aTestMethod aTestClass|
		aTestClass := TestsData uniqueInstance testClasses at: (TestsData uniqueInstance testClasses size).
		aTestClass status: 'SKIPPED'.
		aTestClass endDate: DateAndTime now.
		aTestMethod := aTestClass testsMethods at: aTestClass testsMethods size.
		aTestMethod endTime: DateAndTime now.
		aTestMethod status: 'SKIPPED'.
		