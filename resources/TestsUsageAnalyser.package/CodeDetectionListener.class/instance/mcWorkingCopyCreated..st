announcement handling
mcWorkingCopyCreated: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement package.
	CodeData uniqueInstance modificationDetails: anAnnouncement package.
	CodeData uniqueInstance actionType: #mcWorkingCopyCreated:.
	CodeData uniqueInstance commitID: anAnnouncement workingCopy versionInfo id.
	self break.
	CodeSender send.