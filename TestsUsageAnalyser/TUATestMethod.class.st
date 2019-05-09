"
test method data container
"
Class {
	#name : #TUATestMethod,
	#superclass : #Object,
	#instVars : [
		'testName',
		'status',
		'startTime',
		'endTime'
	],
	#category : 'TestsUsageAnalyser-RTests'
}

{ #category : #accessing }
TUATestMethod >> endTime [
	^ endTime
]

{ #category : #accessing }
TUATestMethod >> endTime: anObject [
	endTime := anObject
]

{ #category : #accessing }
TUATestMethod >> startTime [
	^ startTime
]

{ #category : #accessing }
TUATestMethod >> startTime: anObject [
	startTime := anObject
]

{ #category : #accessing }
TUATestMethod >> status [
	^ status
]

{ #category : #accessing }
TUATestMethod >> status: anObject [
	status := anObject
]

{ #category : #accessing }
TUATestMethod >> testName [
	^ testName
]

{ #category : #accessing }
TUATestMethod >> testName: anObject [
	testName := anObject
]

{ #category : #accessing }
TUATestMethod >> toSend [
	| aDictionnary |
	aDictionnary := Dictionary new.
	aDictionnary
		at: 'name' put: self testName;
		at: 'status' put: self status;
		at: 'duration' put: (self endTime - self startTime) totalSeconds asFloat.
	^ aDictionnary
]
