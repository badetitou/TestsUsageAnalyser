announcement handling
behaviorAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAdded asString.
	CodeData uniqueInstance actionType: #behaviorAdded.
	CodeData uniqueInstance commitID: (MCPackage named: anAnnouncement classAdded package name) workingCopy versionInfo id .
	CodeSender send.