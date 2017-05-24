announcement handling
behaviorRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance actionType: #behaviorRemoved.
	CodeSender send.
