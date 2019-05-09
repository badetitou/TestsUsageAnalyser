"
A listener for class or method modification
"
Class {
	#name : #TUACodeChangeDetectionListener,
	#superclass : #Object,
	#category : 'TestsUsageAnalyser-RCode'
}

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> behaviorAdded: anAnnouncement [ 
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromBehaviorAddedAnnouncement: anAnnouncement)
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> behaviorModified: anAnnouncement [
	self tuaCodeSender
		send:
			( self generateTuaCodeChangeFromBehaviorModifiedAnnouncement: anAnnouncement ).
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> behaviorRemoved: anAnnouncement [
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromBehaviorRemovedAnnouncement: anAnnouncement )
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> classCommented: anAnnouncement [
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromClassCommentedAnnouncement: anAnnouncement )
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> classRecategorized: anAnnouncement [
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromClassRecategorizedAnnouncement: anAnnouncement)
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> classRenamed: anAnnouncement [
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromClassRenamedAnnouncement: anAnnouncement)
]

{ #category : #'system changes' }
TUACodeChangeDetectionListener >> disable [
	"Do not receiver any system change notification anymore"
	self systemAnnouncer unsubscribe: self
]

{ #category : #'system changes' }
TUACodeChangeDetectionListener >> enable [
	self systemAnnouncer unsubscribe: self.
	{(ClassAdded -> #behaviorAdded:).
	(ClassRemoved -> #behaviorRemoved:).
	(ClassRecategorized -> #classRecategorized:).
	(ClassRenamed -> #classRenamed:).
	(ClassCommented -> #classCommented:).
	(ClassModifiedClassDefinition -> #behaviorModified:).
	(MethodAdded -> #methodAdded:).
	(MethodModified -> #methodModified:).
	(MethodRemoved -> #methodRemoved:).
	(MCWorkingCopyCreated -> #mcWorkingCopyCreated:).
	(MCWorkingCopyDeleted -> #mcWorkingCopyDeleted:)}
		do: [ :pair | self systemAnnouncer weak when: pair key send: pair value to: self ]
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromBehaviorAddedAnnouncement: anAnnouncement [ 
	^ self tuaCodeData
				affectedObject: (self getAffectedObjectFromAnnouncement: anAnnouncement);
				actionType: #behaviorAdded;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement classAdded definition
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromBehaviorModifiedAnnouncement: anAnnouncement [ 
	^ self tuaCodeData
				affectedObject: (self getAffectedObjectFromAnnouncement: anAnnouncement);
				actionType: #behaviorModified;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement classAffected definition
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromBehaviorRemovedAnnouncement: anAnnouncement [ 
	^ self tuaCodeData
				affectedObject: (self getAffectedObjectFromAnnouncement: anAnnouncement);
				actionType: #behaviorRemoved;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement classRemoved asString
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromClassCommentedAnnouncement: anAnnouncement [ 
	^ self tuaCodeData
				affectedObject: (self getAffectedObjectFromAnnouncement: anAnnouncement);
				actionType: #classCommented;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement newComment asString
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromClassRecategorizedAnnouncement: anAnnouncement [
	^ self tuaCodeData
				affectedObject: (self getAffectedObjectFromAnnouncement: anAnnouncement);
				actionType: #classRecategorized;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement classAffected definition
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromClassRenamedAnnouncement: anAnnouncement [ 
	^ self tuaCodeData
				affectedObject: anAnnouncement oldName asString;
				actionType: #classRenamed;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement newName asString
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromMcWorkingCopyCreatedAnnouncement: anAnnouncement [
	^ self tuaCodeData
		affectedObject: (self getAffectedPackageFromAnnouncement: anAnnouncement);
		actionType: #mcWorkingCopyCreated:;
		package: anAnnouncement package asString;
		commitID: (self workingCopyIdOf: anAnnouncement workingCopy);
		modificationDetails: anAnnouncement package asString
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromMcWorkingCopyDeletedAnnouncement: anAnnouncement [ 
	^ self tuaCodeData
				affectedObject: (self getAffectedPackageFromAnnouncement: anAnnouncement);
				actionType: #mcWorkingCopyDeleted:;
				package: anAnnouncement package asString;
				commitID: (self workingCopyIdOf: anAnnouncement workingCopy);
				modificationDetails: anAnnouncement package asString
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromMethodAddedAnnouncement: anAnnouncement [ 
	^ self tuaCodeData
				affectedObject: (self getAffectedMethodClassFromAnnouncement: anAnnouncement);
				actionType: #methodAdded;
				package: anAnnouncement methodPackage asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement methodAdded asString
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromMethodModifiedAnnouncement: anAnnouncement [ 
	^ self tuaCodeData
				affectedObject: (self getAffectedMethodClassFromAnnouncement: anAnnouncement);
				actionType: #methodModified;
				package: anAnnouncement methodPackage asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement newMethod asString
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromMethodRecategorizedAnnouncement: anAnnouncement [ 
	^ self tuaCodeData
				affectedObject: (self getAffectedMethodClassFromAnnouncement: anAnnouncement);
				actionType: #methodRecategorized;
				package: anAnnouncement methodPackage asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement newProtocol asString
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> generateTuaCodeChangeFromMethodRemovedAnnouncement: anAnnouncement [ 
	^ self tuaCodeData
				affectedObject: (self getAffectedMethodClassFromAnnouncement: anAnnouncement);
				actionType: #methodRemoved;
				package: anAnnouncement methodPackage asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement methodRemoved asString
]

{ #category : #operation }
TUACodeChangeDetectionListener >> getAffectedMethodClassFromAnnouncement: anAnnouncement [
	^anAnnouncement methodClass asString
]

{ #category : #operation }
TUACodeChangeDetectionListener >> getAffectedObjectFromAnnouncement: anAnnouncement [
	^anAnnouncement classAffected asString
]

{ #category : #operation }
TUACodeChangeDetectionListener >> getAffectedPackageFromAnnouncement: anAnnouncement [
	^ anAnnouncement package asString
]

{ #category : #operation }
TUACodeChangeDetectionListener >> getCommitIdFromAnnouncement: anAnnouncement [
	^self workingCopyIdOf: (MCPackage named: anAnnouncement classAffected package name) workingCopy
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> mcWorkingCopyCreated: anAnnouncement [
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMcWorkingCopyCreatedAnnouncement: anAnnouncement)
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> mcWorkingCopyDeleted: anAnnouncement [
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMcWorkingCopyDeletedAnnouncement: anAnnouncement)
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> methodAdded: anAnnouncement [
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMethodAddedAnnouncement: anAnnouncement)
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> methodModified: anAnnouncement [
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMethodModifiedAnnouncement: anAnnouncement)
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> methodRecategorized: anAnnouncement [
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMethodRecategorizedAnnouncement: anAnnouncement)
]

{ #category : #'announcement handling' }
TUACodeChangeDetectionListener >> methodRemoved: anAnnouncement [
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMethodRemovedAnnouncement: anAnnouncement)
]

{ #category : #'system changes' }
TUACodeChangeDetectionListener >> systemAnnouncer [
	^ SystemAnnouncer uniqueInstance
]

{ #category : #operation }
TUACodeChangeDetectionListener >> tuaCodeData [
	^ TUACodeChangeData new
]

{ #category : #operation }
TUACodeChangeDetectionListener >> tuaCodeSender [
	^ TUACodeChangeSender new
]

{ #category : #operation }
TUACodeChangeDetectionListener >> workingCopyIdOf: aWorkingCopy [
	^ aWorkingCopy versionInfo ifNil: [ nil ] ifNotNil: [ aWorkingCopy versionInfo id ]
]
