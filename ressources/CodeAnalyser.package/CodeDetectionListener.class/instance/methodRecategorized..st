announcement handling
methodRecategorized: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Method Recategorized : ', anAnnouncement methodRecategorized asString , ' -- ',  anAnnouncement oldProtocol asString, ' -> ',  anAnnouncement newProtocol asString).
	CodeSender send.