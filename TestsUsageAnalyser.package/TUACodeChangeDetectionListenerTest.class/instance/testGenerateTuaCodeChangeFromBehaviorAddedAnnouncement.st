tests-announcement handling
testGenerateTuaCodeChangeFromBehaviorAddedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := ClassAdded new classAdded: Object;
		classCategory: #Patate.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromBehaviorAddedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: Object asString.
	self assert: aCodeChangeData actionType equals: #behaviorAdded.
	self assert: aCodeChangeData package equals: Object package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: Object package name) workingCopy versionInfo id.