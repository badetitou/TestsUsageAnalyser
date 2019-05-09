"
A classe who contains the data
"
Class {
	#name : #TUATestsData,
	#superclass : #Object,
	#instVars : [
		'startDate',
		'endDate',
		'author',
		'testClasses',
		'type'
	],
	#category : 'TestsUsageAnalyser-RTests'
}

{ #category : #accessing }
TUATestsData >> addTestsClasses: aTestClasses [
	self testClasses add: aTestClasses.
]

{ #category : #accessing }
TUATestsData >> author [
	^ author
]

{ #category : #accessing }
TUATestsData >> author: anObject [
	author := anObject
]

{ #category : #accessing }
TUATestsData >> endDate [
	^ endDate
]

{ #category : #accessing }
TUATestsData >> endDate: anObject [
	endDate := anObject
]

{ #category : #initialize }
TUATestsData >> initialize [
	testClasses := OrderedCollection new.
	
]

{ #category : #accessing }
TUATestsData >> setType [
	self type: self tuaTestTools type
]

{ #category : #accessing }
TUATestsData >> startDate [
	^ startDate
]

{ #category : #accessing }
TUATestsData >> startDate: anObject [
	startDate := anObject
]

{ #category : #accessing }
TUATestsData >> testClasses [
	^ testClasses ifNil: [ testClasses := OrderedCollection new ]
]

{ #category : #accessing }
TUATestsData >> toSend [
	| aDictionnary |
	aDictionnary := Dictionary new.
	aDictionnary
		at: 'userId' put: author;
		at: 'startDate' put: self startDate asString;
		at: 'endDate' put: self endDate asString;
		at: 'type' put: self type;
		at: 'testClasses' put: (self testClasses collect: #toSend).
	^ aDictionnary
]

{ #category : #accessing }
TUATestsData >> tuaTestTools [
	^ TUATestTools
]

{ #category : #accessing }
TUATestsData >> type [
	^ type
]

{ #category : #accessing }
TUATestsData >> type: anObject [
	type := anObject
]
