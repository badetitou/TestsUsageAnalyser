"
I'm used to create this structure :

{
'commits' -> an UUID.
'package' -> 'a RPackage(...)'.
'snapshot' -> 'hello world'.
'userIf' -> 'a md5 user id'.
'timestamps' -> 'aTimeStamp'.
#affectedObject -> 'Name of the affected object'.
'actionType' -> #nameOfTheAction
}
"
Class {
	#name : #TUACodeChangeData,
	#superclass : #Object,
	#instVars : [
		'commitID',
		'timestamp',
		'modificationDetails',
		'affectedObject',
		'actionType',
		'package'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : 'TestsUsageAnalyser-RCode'
}

{ #category : #accessing }
TUACodeChangeData >> actionType [
	^ actionType
]

{ #category : #accessing }
TUACodeChangeData >> actionType: anObject [
	actionType := anObject
]

{ #category : #accessing }
TUACodeChangeData >> affectedObject [
	^ affectedObject
]

{ #category : #accessing }
TUACodeChangeData >> affectedObject: anObject [
	affectedObject := anObject
]

{ #category : #accessing }
TUACodeChangeData >> commitID [
	^ commitID
]

{ #category : #accessing }
TUACodeChangeData >> commitID: anObject [
	commitID := anObject
]

{ #category : #accessing }
TUACodeChangeData >> modificationDetails [
	^ modificationDetails
]

{ #category : #accessing }
TUACodeChangeData >> modificationDetails: anObject [
	modificationDetails := anObject
]

{ #category : #accessing }
TUACodeChangeData >> package [
	^ package
]

{ #category : #accessing }
TUACodeChangeData >> package: anObject [
	package := anObject
]

{ #category : #accessing }
TUACodeChangeData >> timestamp [
	^ timestamp
]

{ #category : #accessing }
TUACodeChangeData >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #accessing }
TUACodeChangeData >> toSend [
	|firstLevel |
	
	firstLevel := Dictionary new.
	firstLevel at: 'userId' put: (MD5 hashMessage: (Unicode toUppercaseString: Author uniqueInstance fullName)) hex.
	firstLevel at: 'timestamps' put: DateAndTime now asString.
	firstLevel at: #affectedObject put: self affectedObject.
	firstLevel at: 'snapshot' put: self modificationDetails.
	firstLevel at: 'actionType' put: self actionType.
	firstLevel at: 'commits' put: self commitID.
	firstLevel at: 'package' put: self package.
	^firstLevel
]
