announcement handling
methodModified: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass.
	CodeData uniqueInstance modificationDetails: (anAnnouncement newMethod asString).
	CodeData uniqueInstance actionType: #methodModified.
	CodeData uniqueInstance commitID: (self uuid: (MCPackage named: anAnnouncement methodClass package name) workingCopy).
	CodeSender send.