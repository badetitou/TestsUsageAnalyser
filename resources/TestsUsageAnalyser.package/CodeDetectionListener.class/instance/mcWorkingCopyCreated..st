announcement handling
mcWorkingCopyCreated: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement package.
	CodeData uniqueInstance modificationDetails: anAnnouncement package.
	CodeData uniqueInstance actionType: #mcWorkingCopyCreated:.
	CodeData uniqueInstance commitID: (anAnnouncement workingCopy versionInfo ifNil: [ ^nil] ifNotNil: [ :a | a id ]) .
	CodeSender send.