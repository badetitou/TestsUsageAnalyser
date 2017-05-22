announcement handling
categoryRenamed: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement oldCategoryName asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newCategoryName asString.
	CodeSender send.
