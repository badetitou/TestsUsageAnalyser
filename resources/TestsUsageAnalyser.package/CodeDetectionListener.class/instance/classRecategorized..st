announcement handling
classRecategorized: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails:  anAnnouncement newCategory asString.
	CodeData uniqueInstance actionType: #classRecategorized.
	CodeSender send.