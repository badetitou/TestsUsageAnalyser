announcement handling
classRenamed: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newName asString.
	CodeData uniqueInstance actionType: #classRenamed.
	CodeSender send.