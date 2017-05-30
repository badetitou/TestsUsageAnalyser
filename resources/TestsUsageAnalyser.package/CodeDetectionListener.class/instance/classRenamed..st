announcement handling
classRenamed: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newName asString.
	CodeData uniqueInstance actionType: #classRenamed.
	CodeData uniqueInstance commitID: (self uuid: (MCPackage named: anAnnouncement classAffected package name) workingCopy).
	CodeSender send.