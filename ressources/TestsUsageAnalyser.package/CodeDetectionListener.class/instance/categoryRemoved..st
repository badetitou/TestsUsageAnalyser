announcement handling
categoryRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement categoryName asString.
	CodeSender send.