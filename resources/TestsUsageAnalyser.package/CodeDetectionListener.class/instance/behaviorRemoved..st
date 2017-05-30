announcement handling
behaviorRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance actionType: #behaviorRemoved.
	CodeData uniqueInstance commitID: (self uuid: (MCPackage named: anAnnouncement classAffected package name) workingCopy).
	CodeSender send.
