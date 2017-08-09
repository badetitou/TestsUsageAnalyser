tests-announcement handling
testGenerateTuaCodeChangeFromMethodModifiedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MethodModified new
		method: self class >> #setUp;
		oldMethod: #Patate;
		oldMethod: #Hey.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMethodModifiedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: self class asString.
	self assert: aCodeChangeData actionType equals: #methodModified.
	self assert: aCodeChangeData package equals: (self class >> #setUp) package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: (self class >> #setUp) package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: (self class >> #setUp) asString