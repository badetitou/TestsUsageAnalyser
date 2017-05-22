announcement handling
categoryRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Category Removed : ', anAnnouncement categoryName asString).
	CodeSender send.