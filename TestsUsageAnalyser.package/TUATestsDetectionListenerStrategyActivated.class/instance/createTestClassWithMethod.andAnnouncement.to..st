private
createTestClassWithMethod: aMethod andAnnouncement: anAnnouncement to: aTestsData
	| aTestClass |
	aTestClass := TUATestsClasses new.
	aTestClass initialize: aMethod.
	aTestClass testName: anAnnouncement testCase className.
	aTestsData addTestsClasses: aTestClass