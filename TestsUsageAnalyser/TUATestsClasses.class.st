"
Container of TestMethod
"
Class {
	#name : #TUATestsClasses,
	#superclass : #Object,
	#instVars : [
		'testName',
		'status',
		'startDate',
		'endDate',
		'testsMethods'
	],
	#category : 'TestsUsageAnalyser-RTests'
}

{ #category : #accessing }
TUATestsClasses >> addTestMethod: aMethod [
	self testsMethods add: aMethod .
]

{ #category : #accessing }
TUATestsClasses >> endDate [
	^ endDate
]

{ #category : #accessing }
TUATestsClasses >> endDate: anObject [
	endDate := anObject
]

{ #category : #initialize }
TUATestsClasses >> initialize: aTestMethod [
	self
		addTestMethod: aTestMethod;
		testName: aTestMethod className;
		startDate: DateAndTime now;
		status: 'PASS'
]

{ #category : #accessing }
TUATestsClasses >> startDate [
	^ startDate
]

{ #category : #accessing }
TUATestsClasses >> startDate: anObject [
	startDate := anObject
]

{ #category : #accessing }
TUATestsClasses >> status [
	^ status
]

{ #category : #accessing }
TUATestsClasses >> status: anObject [
	status := anObject
]

{ #category : #accessing }
TUATestsClasses >> testName [
	^ testName
]

{ #category : #accessing }
TUATestsClasses >> testName: anObject [
	testName := anObject
]

{ #category : #accessing }
TUATestsClasses >> testsMethods [
	^ testsMethods ifNil: [ testsMethods := OrderedCollection new ]
]

{ #category : #accessing }
TUATestsClasses >> toSend [
	| aDictionnary |
	aDictionnary := Dictionary new.
	aDictionnary
		at: 'name' put: testName;
		at: 'status' put: status;
		at: 'duration' put: (self endDate - self startDate) totalSeconds asFloat;
		at: 'testMethods' put: (self testsMethods collect: #toSend).
	^ aDictionnary
]
