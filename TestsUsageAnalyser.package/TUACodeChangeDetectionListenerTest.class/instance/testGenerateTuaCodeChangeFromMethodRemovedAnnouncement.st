tests-announcement handling
testGenerateTuaCodeChangeFromMethodRemovedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MethodRemoved new
		methodOrigin: self class >> #testGenerateTuaCodeChangeFromMethodRemovedAnnouncement;
		method: self class >> #testGenerateTuaCodeChangeFromMethodRemovedAnnouncement;
		protocol: #Patate.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMethodRemovedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: self class asString.
	self assert: aCodeChangeData actionType equals: #methodRemoved.
	self assert: aCodeChangeData package equals: (self class >> #testGenerateTuaCodeChangeFromMethodRemovedAnnouncement) package asString.
	self
		assert: aCodeChangeData commitID
		equals: (MCPackage named: (self class >> #testGenerateTuaCodeChangeFromMethodRemovedAnnouncement) package name) workingCopy versionInfo id.
	self
		assert: aCodeChangeData modificationDetails
		equals: (self class >> #testGenerateTuaCodeChangeFromMethodRemovedAnnouncement) asString