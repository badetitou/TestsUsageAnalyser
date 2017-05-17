announcement handling
classRecategorized: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Class Recategorized : ', anAnnouncement classRecategorized asString ,  ' -- ', anAnnouncement oldCategory asString, ' -> ',  anAnnouncement newCategory asString).
	CodeSender send.