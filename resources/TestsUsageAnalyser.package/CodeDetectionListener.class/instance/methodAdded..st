announcement handling
methodAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement methodAdded asString.
	CodeData uniqueInstance actionType: #methodAdded.
	CodeSender send.