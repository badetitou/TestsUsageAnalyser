announcement handling
categoryRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement categoryName asString.
	CodeData uniqueInstance actionType: #categoryRemoved.
	CodeSender send.