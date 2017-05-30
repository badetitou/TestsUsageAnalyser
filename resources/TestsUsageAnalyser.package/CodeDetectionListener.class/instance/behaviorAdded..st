announcement handling
behaviorAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAdded asString.
	CodeData uniqueInstance actionType: #behaviorAdded.
	CodeData uniqueInstance commitID: (self uuid: (MCPackage named: anAnnouncement classAffected package name) workingCopy).
	CodeSender send.