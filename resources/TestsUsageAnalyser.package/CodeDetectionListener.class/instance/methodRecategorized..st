announcement handling
methodRecategorized: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newProtocol asString.
	CodeData uniqueInstance actionType: #methodRecategorized.
	CodeData uniqueInstance commitID: (MCPackage named: anAnnouncement methodClass package name) workingCopy versionInfo id.
	CodeSender send.