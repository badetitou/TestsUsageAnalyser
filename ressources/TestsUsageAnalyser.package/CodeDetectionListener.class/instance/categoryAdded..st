announcement handling
categoryAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement categoryName asString.
	CodeSender send.
