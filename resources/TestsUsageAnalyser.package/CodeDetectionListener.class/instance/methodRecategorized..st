announcement handling
methodRecategorized: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newProtocol asString.
	CodeData uniqueInstance actionType: #methodRecategorized.
	CodeSender send.