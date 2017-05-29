announcement handling
behaviorAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAdded asString.
	CodeData uniqueInstance actionType: #behaviorAdded.
	CodeSender send.