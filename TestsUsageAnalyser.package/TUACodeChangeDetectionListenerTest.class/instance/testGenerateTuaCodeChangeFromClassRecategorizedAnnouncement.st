tests-announcement handling
testGenerateTuaCodeChangeFromClassRecategorizedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassRecategorized new
		classRecategorized: Object;
		newCategory: #Hello;
		oldCategory: #World.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromClassRecategorizedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: Object asString.
	self assert: aCodeChangeData actionType equals: #classRecategorized.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: Object definition 