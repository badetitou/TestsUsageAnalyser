announcement handling
methodModified: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Method Modified : ', anAnnouncement oldMethod asString, ' -> ',  anAnnouncement newMethod asString).
	CodeSender send.