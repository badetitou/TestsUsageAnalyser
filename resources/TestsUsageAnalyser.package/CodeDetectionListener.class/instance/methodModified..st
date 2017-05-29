announcement handling
methodModified: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass.
	CodeData uniqueInstance modificationDetails: (anAnnouncement newMethod asString).
	CodeData uniqueInstance actionType: #methodModified.
	CodeData uniqueInstance commitID: ((MCPackage named: anAnnouncement methodClass package name) workingCopy versionInfo ifNil: [ ^nil] ifNotNil: [ :a | a id ]).
	CodeSender send.