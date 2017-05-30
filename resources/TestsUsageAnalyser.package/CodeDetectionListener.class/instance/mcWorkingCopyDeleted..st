announcement handling
mcWorkingCopyDeleted: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement package.
	CodeData uniqueInstance modificationDetails: anAnnouncement package.
	CodeData uniqueInstance actionType: #mcWorkingCopyDeleted:.
	CodeData uniqueInstance commitID: (self uuid: anAnnouncement workingCopy).
	CodeSender send.