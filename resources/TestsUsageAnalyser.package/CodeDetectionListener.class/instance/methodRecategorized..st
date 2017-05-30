announcement handling
methodRecategorized: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newProtocol asString.
	CodeData uniqueInstance actionType: #methodRecategorized.
	CodeData uniqueInstance commitID: (self uuid: (MCPackage named: anAnnouncement methodClass package name) workingCopy).
	CodeSender send.