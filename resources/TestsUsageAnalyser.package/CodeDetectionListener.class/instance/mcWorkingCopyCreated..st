announcement handling
mcWorkingCopyCreated: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement package.
	CodeData uniqueInstance modificationDetails: anAnnouncement package.
	CodeData uniqueInstance actionType: #mcWorkingCopyCreated:.
	CodeData uniqueInstance commitID: (self uuid: anAnnouncement workingCopy).
	CodeSender send.