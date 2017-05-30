announcement handling
behaviorModified: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newClassDefinition asString.
	CodeData uniqueInstance actionType: #behaviorModified.
	CodeData uniqueInstance commitID: (self uuid: (MCPackage named: anAnnouncement classAffected package name) workingCopy).
	CodeSender send.