announcement handling
categoryRenamed: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Category Modify : ', anAnnouncement oldCategoryName asString, ' -> ',  anAnnouncement newCategoryName asString).
	CodeSender send.
