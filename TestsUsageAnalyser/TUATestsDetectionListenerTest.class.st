"
A TUATestsDetectionListenerTest is a test class for testing the behavior of TUATestsDetectionListener
"
Class {
	#name : #TUATestsDetectionListenerTest,
	#superclass : #TestCase,
	#category : 'TestsUsageAnalyser-Tests'
}

{ #category : #'tests-private' }
TUATestsDetectionListenerTest >> testError [
	self error
]

{ #category : #'tests-private' }
TUATestsDetectionListenerTest >> testFail [
	self fail
]

{ #category : #'tests-private' }
TUATestsDetectionListenerTest >> testHalted [
	self halt
]

{ #category : #'tests-private' }
TUATestsDetectionListenerTest >> testPass [
	"This test should not open something strange ^^"
]

{ #category : #'tests-private' }
TUATestsDetectionListenerTest >> testSkip [
	self skip
]
