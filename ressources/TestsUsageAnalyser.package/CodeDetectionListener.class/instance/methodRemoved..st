announcement handling
methodRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement methodRemoved asString.
	CodeSender send.