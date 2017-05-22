announcement handling
classCommented: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newComment asString.
	CodeSender send.
