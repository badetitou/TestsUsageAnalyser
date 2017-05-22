announcement handling
behaviorRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeSender send.
