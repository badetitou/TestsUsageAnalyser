announcement handling
mcWorkingCopyDeleted: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement package.
	CodeData uniqueInstance modificationDetails: anAnnouncement package.
	CodeData uniqueInstance actionType: #mcWorkingCopyDeleted:.
	CodeData uniqueInstance commitID: anAnnouncement workingCopy versionInfo id.
	CodeSender send.