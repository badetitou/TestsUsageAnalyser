announcement handling
behaviorModified: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newClassDefinition asString.
	CodeData uniqueInstance actionType: #behaviorModified.
	CodeSender send.