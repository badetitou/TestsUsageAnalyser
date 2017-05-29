announcement handling
classCommented: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement newComment asString.
	CodeData uniqueInstance actionType: #classCommented.
	CodeData uniqueInstance commitID: ((MCPackage named: anAnnouncement classAffected package name) workingCopy versionInfo ifNil: [ ^nil] ifNotNil: [ :a | a id ]).
	CodeSender send.
