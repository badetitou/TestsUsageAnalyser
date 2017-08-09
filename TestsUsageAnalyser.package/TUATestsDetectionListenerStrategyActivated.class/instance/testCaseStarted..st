private
testCaseStarted: anAnnouncement
	| aMethod aTestClass aTestData |
	aMethod := self tuaTestMethod new.
	aTestData := self testRunning
		at: anAnnouncement testResult
		ifAbsentPut: [ self tuaTestsData new ].
	aTestData setType.
	aMethod startTime: DateAndTime now.
	aMethod testName: anAnnouncement testCase asString.
	aTestData testClasses
		ifEmpty: [ aTestData startDate: DateAndTime now.
			self createTestClassWithMethod: aMethod andAnnouncement: anAnnouncement to: aTestData ]
		ifNotEmpty: [ aTestClass := aTestData testClasses last.
			aTestClass testName = anAnnouncement testCase className
				ifTrue: [ aTestClass addTestMethod: aMethod ]
				ifFalse: [ self createTestClassWithMethod: aMethod andAnnouncement: anAnnouncement to: aTestData ] ]