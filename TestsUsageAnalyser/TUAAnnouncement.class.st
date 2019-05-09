"
A TUA event for usage analyser. It contains either a test data or a code change data object.
"
Class {
	#name : #TUAAnnouncement,
	#superclass : #Announcement,
	#instVars : [
		'entity',
		'type'
	],
	#category : 'TestsUsageAnalyser-Announcements'
}

{ #category : #actions }
TUAAnnouncement >> dataForTestUsageAnalyser [

	^ super dataForTestUsageAnalyser
		at: #class put: self class name;
		at: #entity put: entity;
		at: #dataVersion put: TUAEventCollector dataVersion;
		yourself
]

{ #category : #accessing }
TUAAnnouncement >> entity [
	^ entity
]

{ #category : #accessing }
TUAAnnouncement >> entity: anObject [
	entity := anObject
]

{ #category : #accessing }
TUAAnnouncement >> type [
	^ type
]

{ #category : #accessing }
TUAAnnouncement >> type: anObject [
	type := anObject
]
