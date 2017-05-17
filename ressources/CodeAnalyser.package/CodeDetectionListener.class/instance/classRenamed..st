announcement handling
classRenamed: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Class Renammed : ', anAnnouncement oldName asString, ' -> ',  anAnnouncement newName asString).
	CodeSender send.