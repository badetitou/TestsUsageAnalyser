"
I announce events related to TUA  

To see the possilbe announcements check TUAEvent hierarchy.

To subscribe use:
just check the box in the privacy settings
"
Class {
	#name : #TUAAnnouncer,
	#superclass : #Announcer,
	#classInstVars : [
		'uniqueInstance'
	],
	#category : 'TestsUsageAnalyser-Announcements'
}

{ #category : #'instance creation' }
TUAAnnouncer class >> uniqueInstance [
	"I'm a singleton…"
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]
