"
I'm the null strategy. By default i'm used when the user desactivates this plugin.
"
Class {
	#name : #TUATestsDetectionListenerStrategyNull,
	#superclass : #TUATestsDetectionListenerStrategy,
	#category : 'TestsUsageAnalyser-RTests'
}

{ #category : #tests }
TUATestsDetectionListenerStrategyNull >> testCaseEnded: anAnnouncement [
]

{ #category : #tests }
TUATestsDetectionListenerStrategyNull >> testCaseFailled: aTestResult [	
]

{ #category : #tests }
TUATestsDetectionListenerStrategyNull >> testCaseRaiseError: aTestResult [
	
]

{ #category : #tests }
TUATestsDetectionListenerStrategyNull >> testCaseRaiseHalt: aTestResult [
	
]

{ #category : #tests }
TUATestsDetectionListenerStrategyNull >> testCaseSkipped: aTestResult [
	
]

{ #category : #tests }
TUATestsDetectionListenerStrategyNull >> testCaseStarted: anAnnouncement [
]

{ #category : #tests }
TUATestsDetectionListenerStrategyNull >> testRan: anAnnouncement [
]

{ #category : #tests }
TUATestsDetectionListenerStrategyNull >> testRunning [
	
]
