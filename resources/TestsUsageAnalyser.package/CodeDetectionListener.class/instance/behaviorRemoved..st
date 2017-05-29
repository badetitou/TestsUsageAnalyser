announcement handling
behaviorRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance actionType: #behaviorRemoved.
	CodeData uniqueInstance commitID: ((MCPackage named: anAnnouncement classAffected package name) workingCopy versionInfo ifNil: [ ^nil] ifNotNil: [ :a | a id ]) .
	CodeSender send.
