"
I'm the activted strategy. I'm used by default. I parse the data from the announcement i receive
"
Class {
	#name : #TUATestsDetectionListenerStrategyActivated,
	#superclass : #TUATestsDetectionListenerStrategy,
	#category : 'TestsUsageAnalyser-RTests'
}

{ #category : #private }
TUATestsDetectionListenerStrategyActivated >> createTestClassWithMethod: aMethod andAnnouncement: anAnnouncement to: aTestsData [
	| aTestClass |
	aTestClass := TUATestsClasses new.
	aTestClass initialize: aMethod.
	aTestClass testName: anAnnouncement testCase className.
	aTestsData addTestsClasses: aTestClass
]

{ #category : #private }
TUATestsDetectionListenerStrategyActivated >> testCase: aTestMethod hasEndedStatusFrom: anAnnouncement [
	"Some staff"

	aTestMethod status
		ifNil: [ (anAnnouncement testResult isError: anAnnouncement testCase)
				ifTrue: [ aTestMethod status: 'ERROR' ]
				ifFalse: [ (anAnnouncement testResult isFailure: anAnnouncement testCase)
						ifTrue: [ aTestMethod status: 'FAIL' ]
						ifFalse: [ aTestMethod status: 'PASS' ] ] ]
]

{ #category : #private }
TUATestsDetectionListenerStrategyActivated >> testCaseEnded: anAnnouncement [
	| aTestClass aTestMethod aTestsData |
	aTestsData := self testRunning at: anAnnouncement testResult.
	aTestClass := aTestsData testClasses last.
	aTestMethod := aTestClass testsMethods last.
	aTestMethod endTime: DateAndTime now.
	self testCase: aTestMethod hasEndedStatusFrom: anAnnouncement.
	aTestClass endDate: DateAndTime now
]

{ #category : #private }
TUATestsDetectionListenerStrategyActivated >> testCaseFailled: aTestResult [
	| aTestClass aTestMethod aTestsData |
	aTestsData := self testRunning at: aTestResult.
	aTestClass := aTestsData testClasses last.
	aTestMethod := aTestClass testsMethods last.
	aTestMethod endTime: DateAndTime now.
	aTestMethod status: 'FAIL'.
	aTestClass endDate: DateAndTime now
]

{ #category : #private }
TUATestsDetectionListenerStrategyActivated >> testCaseRaiseError: aTestResult [
	| aTestClass aTestMethod aTestsData |
	aTestsData := self testRunning at: aTestResult.
	aTestClass := aTestsData testClasses last.
	aTestMethod := aTestClass testsMethods last.
	aTestMethod endTime: DateAndTime now.
	aTestMethod status: 'ERROR'.
	aTestClass endDate: DateAndTime now.
	aTestClass status: 'ERROR'
]

{ #category : #private }
TUATestsDetectionListenerStrategyActivated >> testCaseRaiseHalt: aTestResult [
	self testCaseRaiseError: aTestResult
]

{ #category : #private }
TUATestsDetectionListenerStrategyActivated >> testCaseSkipped: aTestResult [


	| aTestMethod aTestClass aTestsData |
	aTestsData := self testRunning at: aTestResult.
	aTestClass := aTestsData testClasses last.
	aTestClass endDate: DateAndTime now.
	aTestMethod := aTestClass testsMethods last.
	aTestMethod endTime: DateAndTime now.
	aTestMethod status: 'SKIPPED'
]

{ #category : #private }
TUATestsDetectionListenerStrategyActivated >> testCaseStarted: anAnnouncement [
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
]

{ #category : #private }
TUATestsDetectionListenerStrategyActivated >> testRan: anAnnouncement [
	self tuaTestsSender
		send:
			((self testRunning at: (anAnnouncement testResult history at: #TUATestResult) ifAbsent: [ ^ self ])
				author: (MD5 hashMessage: (Unicode toUppercaseString: Author fullName)) hex;
				endDate: DateAndTime now).
	self testRunning removeKey: (anAnnouncement testResult history at: #TUATestResult)
]

{ #category : #private }
TUATestsDetectionListenerStrategyActivated >> testRunning [
	^ testRunning ifNil: [ testRunning := Dictionary new ]
]
