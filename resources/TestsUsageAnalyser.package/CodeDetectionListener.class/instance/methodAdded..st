announcement handling
methodAdded: anAnnouncement
	CodeData uniqueInstance objectAffected: anAnnouncement methodClass asString.
	CodeData uniqueInstance modificationDetails: anAnnouncement methodAdded asString.
	CodeData uniqueInstance actionType: #methodAdded.
	CodeData uniqueInstance commitID: ((MCPackage named: anAnnouncement methodClass package name) workingCopy versionInfo ifNil: [ ^nil] ifNotNil: [ :a | a id ]).
	CodeSender send.