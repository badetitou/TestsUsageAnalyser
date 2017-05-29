announcement handling
methodRemoved: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement methodRemoved asString.
	CodeData uniqueInstance actionType: #methodRemoved.
	CodeData uniqueInstance commitID: ((MCPackage named: anAnnouncement methodClass package name) workingCopy versionInfo ifNil: [ ^nil] ifNotNil: [ :a | a id ]).
	CodeSender send.