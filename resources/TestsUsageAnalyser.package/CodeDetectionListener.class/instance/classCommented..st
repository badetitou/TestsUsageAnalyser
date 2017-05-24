announcement handling
classCommented: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newComment asString.
	CodeData uniqueInstance actionType: #classCommented.
	CodeSender send.
