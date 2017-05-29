announcement handling
behaviorAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAdded asString.
	CodeData uniqueInstance actionType: #behaviorAdded.
	CodeData uniqueInstance commitID: ((MCPackage named: anAnnouncement classAffected package name) workingCopy versionInfo ifNil: [ ^nil] ifNotNil: [ :a | a id ]) .
	CodeSender send.