"
Detect running tests
"
Class {
	#name : #TUATestsDetectionListener,
	#superclass : #Object,
	#instVars : [
		'tuaTestsDetectionListenerStrategy'
	],
	#classVars : [
		'TAAnnouncer'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : 'TestsUsageAnalyser-RTests'
}

{ #category : #event }
TUATestsDetectionListener class >> TAAnnouncer [
	^ TAAnnouncer ifNil: [ TAAnnouncer := Announcer new. ].
]

{ #category : #accessing }
TUATestsDetectionListener >> disable [
	self unregisterToTestAnnouncements.
	self tuaTestsDetectionListenerStrategy: TUATestsDetectionListenerStrategyNull new
]

{ #category : #accessing }
TUATestsDetectionListener >> enable [
	self
		tuaTestsDetectionListenerStrategy: TUATestsDetectionListenerStrategyActivated new.
		self registerToTestAnnouncements
]

{ #category : #'announcement registration' }
TUATestsDetectionListener >> initialize [
	testRunning := Dictionary new.
]

{ #category : #'announcement registration' }
TUATestsDetectionListener >> registerToTestAnnouncements [
	self class TAAnnouncer unsubscribe: self tuaTestsDetectionListenerStrategy.
	self testCaseHistoryAnnouncer unsubscribe: self tuaTestsDetectionListenerStrategy.
	self class TAAnnouncer weak
		when: TestCaseStarted send: #testCaseStarted: to: self tuaTestsDetectionListenerStrategy;
		when: TestCaseEnded send: #testCaseEnded: to: self tuaTestsDetectionListenerStrategy.
	self testCaseHistoryAnnouncer weak
		when: TestSuiteEnded
		send: #testRan:
		to: self tuaTestsDetectionListenerStrategy
]

{ #category : #'announcement registration' }
TUATestsDetectionListener >> testCaseFailled: aTestResult [
	self tuaTestsDetectionListenerStrategy testCaseFailled: aTestResult
]

{ #category : #'announcement registration' }
TUATestsDetectionListener >> testCaseHistoryAnnouncer [
	^ TestCase historyAnnouncer
]

{ #category : #'announcement registration' }
TUATestsDetectionListener >> testCaseRaiseError: aTestResult [
	self tuaTestsDetectionListenerStrategy testCaseRaiseError: aTestResult
]

{ #category : #'announcement registration' }
TUATestsDetectionListener >> testCaseRaiseHalt: aTestResult [
	self tuaTestsDetectionListenerStrategy testCaseRaiseHalt: aTestResult
]

{ #category : #'announcement registration' }
TUATestsDetectionListener >> testCaseSkipped: aTestResult [
	self tuaTestsDetectionListenerStrategy testCaseSkipped: aTestResult
]

{ #category : #'announcement registration' }
TUATestsDetectionListener >> tuaTestsDetectionListenerStrategy [
	^ tuaTestsDetectionListenerStrategy
		ifNil: [ tuaTestsDetectionListenerStrategy := TUATestsDetectionListenerStrategyActivated new ]
]

{ #category : #'announcement registration' }
TUATestsDetectionListener >> tuaTestsDetectionListenerStrategy: aTuaTestsDetectionListenerStrategy [
	^ tuaTestsDetectionListenerStrategy := aTuaTestsDetectionListenerStrategy
]

{ #category : #'announcement registration' }
TUATestsDetectionListener >> unregisterToTestAnnouncements [
	self class TAAnnouncer unsubscribe: self tuaTestsDetectionListenerStrategy.
	self testCaseHistoryAnnouncer unsubscribe: self tuaTestsDetectionListenerStrategy
]
