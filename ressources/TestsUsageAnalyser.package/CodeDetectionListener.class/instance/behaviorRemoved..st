announcement handling
behaviorRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: ('Class Removed : ', anAnnouncement classRemoved asString ).
	CodeSender send.
