announcement handling
classCommented: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Class Commented : ', anAnnouncement classCommented asString ,  ' -- ', anAnnouncement oldComment asString, ' -> ',  anAnnouncement newComment asString).
	CodeSender send.
