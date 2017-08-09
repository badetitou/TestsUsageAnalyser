tests-announcement handling
testGenerateTuaCodeChangeFromClassCommentedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassCommented new
		newComment: #patate;
		classCommented: Object;
		newStamp: #Hello;
		oldStamp: #World;
		oldComment: #arbre.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromClassCommentedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: Object asString.
	self assert: aCodeChangeData actionType equals: #classCommented.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: #patate