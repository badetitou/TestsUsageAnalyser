"
A TUACodeChangeDetectionListenerTest is a test class for testing the behavior of TUACodeChangeDetectionListener
"
Class {
	#name : #TUACodeChangeDetectionListenerTest,
	#superclass : #TestCase,
	#instVars : [
		'aCodeChangeListener'
	],
	#category : 'TestsUsageAnalyser-Tests'
}

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> setUp [
	aCodeChangeListener := TUACodeChangeDetectionListener new.
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromBehaviorAddedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassAdded new classAdded: Object;
		classCategory: #Patate.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromBehaviorAddedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: Object asString.
	self assert: aCodeChangeData actionType equals: #behaviorAdded.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromBehaviorModifiedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassModifiedClassDefinition new newClassDefinition: Object.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromBehaviorModifiedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: Object asString .
	self assert: aCodeChangeData actionType equals: #behaviorModified.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: Object definition.
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromBehaviorRemovedAnnouncement [
		| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassRemoved new categoryName: #patate; classRemoved: Object.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromBehaviorRemovedAnnouncement: anAnnouncement.
	
	self assert: aCodeChangeData affectedObject equals: Object asString .
	self assert: aCodeChangeData actionType equals: #behaviorRemoved.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: Object asString.
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromClassCommentedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassCommented new
		newComment: #patate;
		classCommented: Object;
		newStamp: #Hello;
		oldStamp: #World;
		oldComment: #arbre.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromClassCommentedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: Object asString.
	self assert: aCodeChangeData actionType equals: #classCommented.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: #patate
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromClassRecategorizedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassRecategorized new
		classRecategorized: Object;
		newCategory: #Hello;
		oldCategory: #World.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromClassRecategorizedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: Object asString.
	self assert: aCodeChangeData actionType equals: #classRecategorized.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: Object definition 
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromClassRenamedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassRenamed new
		classRenamed: Object;
		category: #Hello;
		newName: #Chat;
		oldName: #Object.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromClassRenamedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: Object asString.
	self assert: aCodeChangeData actionType equals: #classRenamed.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: #Chat
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromMcWorkingCopyCreatedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MCWorkingCopyCreated new
		package: TUACodeChangeDetectionListenerTest package mcWorkingCopy package;
		workingCopy: TUACodeChangeDetectionListenerTest package mcWorkingCopy.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMcWorkingCopyCreatedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString.
	self assert: aCodeChangeData actionType equals: #mcWorkingCopyCreated:.
	self assert: aCodeChangeData package equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString .
	self assert: aCodeChangeData modificationDetails equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromMcWorkingCopyDeletedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MCWorkingCopyDeleted new
		package: TUACodeChangeDetectionListenerTest package mcWorkingCopy package;
		workingCopy: TUACodeChangeDetectionListenerTest package mcWorkingCopy.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMcWorkingCopyDeletedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString.
	self assert: aCodeChangeData actionType equals: #mcWorkingCopyDeleted:.
	self assert: aCodeChangeData package equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString.
	self assert: aCodeChangeData modificationDetails equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromMethodAddedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MethodAdded new method: self class >> #setUp.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMethodAddedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: self class asString.
	self assert: aCodeChangeData actionType equals: #methodAdded.
	self assert: aCodeChangeData package equals: (self class >> #setUp) package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: (self class >> #setUp) package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals:  (self class >> #setUp) asString 
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromMethodModifiedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MethodModified new
		method: self class >> #setUp;
		oldMethod: #Patate;
		oldMethod: #Hey.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMethodModifiedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: self class asString.
	self assert: aCodeChangeData actionType equals: #methodModified.
	self assert: aCodeChangeData package equals: (self class >> #setUp) package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: (self class >> #setUp) package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: (self class >> #setUp) asString
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromMethodRecategorizedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MethodRecategorized new
		method: self class >> #setUp;
		oldProtocol: #Patate.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMethodRecategorizedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: self class asString.
	self assert: aCodeChangeData actionType equals: #methodRecategorized.
	self assert: aCodeChangeData package equals: (self class >> #setUp) package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: (self class >> #setUp) package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: (self class >> #setUp) protocol asString
]

{ #category : #'tests-announcement handling' }
TUACodeChangeDetectionListenerTest >> testGenerateTuaCodeChangeFromMethodRemovedAnnouncement [
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MethodRemoved new
		methodOrigin: self class >> #testGenerateTuaCodeChangeFromMethodRemovedAnnouncement;
		method: self class >> #testGenerateTuaCodeChangeFromMethodRemovedAnnouncement;
		protocol: #Patate.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMethodRemovedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: self class asString.
	self assert: aCodeChangeData actionType equals: #methodRemoved.
	self assert: aCodeChangeData package equals: (self class >> #testGenerateTuaCodeChangeFromMethodRemovedAnnouncement) package asString.
	self
		assert: aCodeChangeData commitID
		equals: (MCPackage named: (self class >> #testGenerateTuaCodeChangeFromMethodRemovedAnnouncement) package name) workingCopy versionInfo id.
	self
		assert: aCodeChangeData modificationDetails
		equals: (self class >> #testGenerateTuaCodeChangeFromMethodRemovedAnnouncement) asString
]
