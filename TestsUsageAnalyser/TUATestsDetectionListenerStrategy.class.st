"
I represent the class that host the different strategy of recording
"
Class {
	#name : #TUATestsDetectionListenerStrategy,
	#superclass : #Object,
	#instVars : [
		'testRunning',
		'testSender'
	],
	#category : 'TestsUsageAnalyser-RTests'
}

{ #category : #tests }
TUATestsDetectionListenerStrategy >> testCaseEnded: anAnnouncement [
	self subclassResponsibility
]

{ #category : #tests }
TUATestsDetectionListenerStrategy >> testCaseFailled: aTestResult [
	self subclassResponsibility
]

{ #category : #tests }
TUATestsDetectionListenerStrategy >> testCaseRaiseError: aTestResult [
	self subclassResponsibility
]

{ #category : #tests }
TUATestsDetectionListenerStrategy >> testCaseRaiseHalt: aTestResult [
	self subclassResponsibility
]

{ #category : #tests }
TUATestsDetectionListenerStrategy >> testCaseSkipped: aTestResult [
	self subclassResponsibility
]

{ #category : #tests }
TUATestsDetectionListenerStrategy >> testCaseStarted: anAnnouncement [
	self subclassResponsibility
]

{ #category : #tests }
TUATestsDetectionListenerStrategy >> testRan: anAnnouncement [
	self subclassResponsibility
]

{ #category : #tests }
TUATestsDetectionListenerStrategy >> testRunning [
	self subclassResponsibility 
]

{ #category : #private }
TUATestsDetectionListenerStrategy >> tuaTestMethod [
	^ TUATestMethod
]

{ #category : #private }
TUATestsDetectionListenerStrategy >> tuaTestsData [
	^ TUATestsData
]

{ #category : #private }
TUATestsDetectionListenerStrategy >> tuaTestsSender [
	^ testSender ifNil: [ testSender := TUATestsSender new ] 
]

{ #category : #private }
TUATestsDetectionListenerStrategy >> tuaTestsSender: aTUATestSender [
	^ testSender := aTUATestSender
]
