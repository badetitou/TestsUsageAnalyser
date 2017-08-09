tests-announcement handling
testGenerateTuaCodeChangeFromBehaviorRemovedAnnouncement
		| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassRemoved new categoryName: #patate; classRemoved: Object.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromBehaviorRemovedAnnouncement: anAnnouncement.
	
	self assert: aCodeChangeData affectedObject equals: Object asString .
	self assert: aCodeChangeData actionType equals: #behaviorRemoved.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: Object asString.