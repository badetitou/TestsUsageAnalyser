operation
getCommitIdFromAnnouncement: anAnnouncement
	^self workingCopyIdOf: (MCPackage named: anAnnouncement classAffected package name) workingCopy