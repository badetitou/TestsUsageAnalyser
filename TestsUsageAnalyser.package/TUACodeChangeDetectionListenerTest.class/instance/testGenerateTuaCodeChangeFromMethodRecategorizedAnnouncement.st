tests-announcement handling
testGenerateTuaCodeChangeFromMethodRecategorizedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MethodRecategorized new
		method: self class >> #setUp;
		oldProtocol: #Patate.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMethodRecategorizedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: self class asString.
	self assert: aCodeChangeData actionType equals: #methodRecategorized.
	self assert: aCodeChangeData package equals: (self class >> #setUp) package asString.
	self assert: aCodeChangeData commitID equals: (MCPackage named: (self class >> #setUp) package name) workingCopy versionInfo id.
	self assert: aCodeChangeData modificationDetails equals: (self class >> #setUp) protocol asString