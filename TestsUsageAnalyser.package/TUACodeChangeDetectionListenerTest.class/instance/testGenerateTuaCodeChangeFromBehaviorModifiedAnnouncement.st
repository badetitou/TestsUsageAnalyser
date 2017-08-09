tests-announcement handling
testGenerateTuaCodeChangeFromBehaviorModifiedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassModifiedClassDefinition new newClassDefinition: Object.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromBehaviorModifiedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: Object asString .
	self assert: aCodeChangeData actionType equals: #behaviorModified.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: Object asString.