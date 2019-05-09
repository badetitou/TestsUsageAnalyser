"
The way the user starts the test
"
Class {
	#name : #TUATestTools,
	#superclass : #Object,
	#classVars : [
		'Halted',
		'Type'
	],
	#category : 'TestsUsageAnalyser-RTests'
}

{ #category : #initialization }
TUATestTools class >> halted [
	^Halted.
]

{ #category : #initialization }
TUATestTools class >> halted: anObject [
	^Halted := anObject.
]

{ #category : #initialization }
TUATestTools class >> initialize [
	
	Type := #unknown
]

{ #category : #initialization }
TUATestTools class >> reset [
	self initialize 
]

{ #category : #accesing }
TUATestTools class >> setByClass [

	Type := #byClass
]

{ #category : #accesing }
TUATestTools class >> setByMethod [

	Type := #byMethod
]

{ #category : #accesing }
TUATestTools class >> setByTestRunner [
	"comment stating purpose of message"
	Type := #byTestRunner
]

{ #category : #initialization }
TUATestTools class >> type [

	^ Type
]
