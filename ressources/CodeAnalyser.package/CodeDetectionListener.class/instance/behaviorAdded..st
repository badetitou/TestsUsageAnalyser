announcement handling
behaviorAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Class Added : ', anAnnouncement classAdded className).
	CodeSender send.
