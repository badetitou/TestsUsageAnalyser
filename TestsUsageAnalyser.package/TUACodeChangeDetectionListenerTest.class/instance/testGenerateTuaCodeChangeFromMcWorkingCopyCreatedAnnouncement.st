tests-announcement handling
testGenerateTuaCodeChangeFromMcWorkingCopyCreatedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MCWorkingCopyCreated new
		package: TUACodeChangeDetectionListenerTest package mcWorkingCopy package;
		workingCopy: TUACodeChangeDetectionListenerTest package mcWorkingCopy.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMcWorkingCopyCreatedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString.
	self assert: aCodeChangeData actionType equals: #mcWorkingCopyCreated:.
	self assert: aCodeChangeData package equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString .
	self assert: aCodeChangeData modificationDetails equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString