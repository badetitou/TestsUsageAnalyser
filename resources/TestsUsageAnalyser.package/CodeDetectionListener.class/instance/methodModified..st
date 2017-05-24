announcement handling
methodModified: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass.
	CodeData uniqueInstance modificationDetails: (anAnnouncement newMethod asString).
	CodeData uniqueInstance actionType: #methodModified.
	CodeSender send.