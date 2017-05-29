announcement handling
classRenamed: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newName asString.
	CodeData uniqueInstance actionType: #classRenamed.
	CodeData uniqueInstance commitID: (MCPackage named: anAnnouncement classAffected package name) workingCopy versionInfo id.
	CodeSender send.