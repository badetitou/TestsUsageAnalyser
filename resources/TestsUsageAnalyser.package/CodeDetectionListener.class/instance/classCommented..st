announcement handling
classCommented: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newComment asString.
	CodeData uniqueInstance actionType: #classCommented.
	CodeData uniqueInstance commitID: (self uuid: (MCPackage named: anAnnouncement classAffected package name) workingCopy).
	CodeSender send.
