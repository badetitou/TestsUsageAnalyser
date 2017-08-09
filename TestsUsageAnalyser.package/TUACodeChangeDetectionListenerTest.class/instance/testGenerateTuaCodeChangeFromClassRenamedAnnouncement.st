tests-announcement handling
testGenerateTuaCodeChangeFromClassRenamedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassRenamed new
		classRenamed: Object;
		category: #Hello;
		newName: #Chat;
		oldName: #Object.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromClassRenamedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: Object asString.
	self assert: aCodeChangeData actionType equals: #classRenamed.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: #Chat