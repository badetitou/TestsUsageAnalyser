announcement handling
categoryAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Category Added : ', anAnnouncement categoryName asString).
	CodeSender send.
