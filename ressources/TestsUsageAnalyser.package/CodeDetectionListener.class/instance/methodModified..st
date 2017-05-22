announcement handling
methodModified: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass.
	CodeData uniqueInstance modificationDetails: (anAnnouncement newMethod asString).
	CodeSender send.