announcement handling
methodAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Method Added : ', anAnnouncement methodAdded asString, ' -> ',  anAnnouncement methodAdded sourceCode asString).
	CodeSender send.