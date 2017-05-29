announcement handling
behaviorRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance actionType: #behaviorRemoved.
	CodeData uniqueInstance commitID: (MCPackage named: anAnnouncement categoryName) workingCopy versionInfo id .
	CodeSender send.
