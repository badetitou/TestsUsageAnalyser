announcement handling
classRecategorized: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement classAffected asString.
	CodeData uniqueInstance modificationDetails:  anAnnouncement newCategory asString.
	CodeData uniqueInstance actionType: #classRecategorized.
	CodeData uniqueInstance commitID: ((MCPackage named: anAnnouncement classAffected package name) workingCopy versionInfo ifNil: [ ^nil] ifNotNil: [ :a | a id ]).
	CodeSender send.