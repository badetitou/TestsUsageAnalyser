announcement handling
behaviorModified: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Class Modified : ', anAnnouncement oldClassDefinition asString , ' -> ' , anAnnouncement newClassDefinition asString).
	CodeSender send.