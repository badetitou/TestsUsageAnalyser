announcement handling
behaviorRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance actionType: #behaviorRemoved.
	CodeData uniqueInstance commitID: (MCPackage named: anAnnouncement classAffected package name) workingCopy versionInfo id .
	CodeSender send.
