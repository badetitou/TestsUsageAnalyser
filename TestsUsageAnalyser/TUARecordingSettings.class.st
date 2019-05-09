"
I have settings for TUA recording functions
"
Class {
	#name : #TUARecordingSettings,
	#superclass : #Object,
	#classInstVars : [
		'uniqueInstance',
		'showErrors'
	],
	#category : 'TestsUsageAnalyser-Recording'
}

{ #category : #accessing }
TUARecordingSettings class >> showErrors [
	^ showErrors ifNil: [ showErrors := false ]
]

{ #category : #accessing }
TUARecordingSettings class >> showErrors: anObject [
	showErrors :=  anObject
]

{ #category : #accessing }
TUARecordingSettings class >> url [
	^'http://gc.dcc.uchile.cl.:8080/gt/events' asZnUrl
]
