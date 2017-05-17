private
testCaseEnded: anAnnouncement
	"Some staff"
	| aTestClass aTestMethod |
	aTestClass := TestsData uniqueInstance testClasses at: (TestsData uniqueInstance testClasses size).
	aTestMethod := aTestClass testsMethods at: aTestClass testsMethods size.
	aTestMethod endTime: DateAndTime now.
	(anAnnouncement testResult isError: anAnnouncement testCase) 
		ifTrue: [ aTestMethod status: 'ERROR' ]
		ifFalse: [ 
			( anAnnouncement testResult isFailure: anAnnouncement testCase )
				ifTrue: [ aTestMethod status: 'FAIL' ]
				ifFalse: [ 
						 aTestMethod status: 'PASS'.
					]
		].
	aTestClass endDate: DateAndTime now.