tests-announcement handling
testGenerateTuaCodeChangeFromMethodAddedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MethodAdded new method: self class >> #setUp.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMethodAddedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: self class asString.
	self assert: aCodeChangeData actionType equals: #methodAdded.
	self assert: aCodeChangeData package equals: (self class >> #setUp) package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: (self class >> #setUp) package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals:  (self class >> #setUp) asString 