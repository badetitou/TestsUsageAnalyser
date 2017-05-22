private
testCaseStarted: anAnnouncement
	"Some staff"
	| aMethod aTestClass|
	aMethod := TestMethod new.
	aMethod startTime: DateAndTime now.
	aMethod testName: anAnnouncement testCase name.
	TestsData uniqueInstance testClasses isEmpty ifTrue: 
	[
		TestsData uniqueInstance startDate: DateAndTime now.
		aTestClass := TestsClasses new.
		aTestClass initialize: aMethod.
		aTestClass testName: anAnnouncement testCase className.
		TestsData uniqueInstance addTestsClasses: aTestClass.
	]
	ifFalse:
	[
		aTestClass := TestsData uniqueInstance testClasses at: (TestsData uniqueInstance testClasses size).
		[ aTestClass testName  = anAnnouncement testCase className ] value ifTrue: 
			[ 
				aTestClass addTestMethod: aMethod.
			] ifFalse: 
		 	[
				aTestClass := TestsClasses new.
				aTestClass initialize: aMethod.
				aTestClass testName: anAnnouncement testCase className.
				TestsData uniqueInstance addTestsClasses: aTestClass.
			]
	]