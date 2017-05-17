announcement handling
methodRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Method Removed : ', anAnnouncement methodRemoved asString).
	CodeSender send.