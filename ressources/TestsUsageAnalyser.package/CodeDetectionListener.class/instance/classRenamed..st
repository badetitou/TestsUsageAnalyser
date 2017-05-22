announcement handling
classRenamed: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newName asString.
	CodeSender send.