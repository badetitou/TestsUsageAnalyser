announcement handling
categoryAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement categoryName asString.
	CodeData uniqueInstance actionType: #categoryAdded.
	CodeSender send.
