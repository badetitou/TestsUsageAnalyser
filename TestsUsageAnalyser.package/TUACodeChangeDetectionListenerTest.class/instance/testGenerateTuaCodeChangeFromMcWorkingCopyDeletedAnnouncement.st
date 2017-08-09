tests-announcement handling
testGenerateTuaCodeChangeFromMcWorkingCopyDeletedAnnouncement
	| anAnnouncement aCodeChangeData |
	anAnnouncement := MCWorkingCopyDeleted new
		package: TUACodeChangeDetectionListenerTest package mcWorkingCopy package;
		workingCopy: TUACodeChangeDetectionListenerTest package mcWorkingCopy.
	aCodeChangeData := aCodeChangeListener generateTuaCodeChangeFromMcWorkingCopyDeletedAnnouncement: anAnnouncement.
	self assert: aCodeChangeData affectedObject equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString.
	self assert: aCodeChangeData actionType equals: #mcWorkingCopyDeleted:.
	self assert: aCodeChangeData package equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString.
	self assert: aCodeChangeData modificationDetails equals: TUACodeChangeDetectionListenerTest package mcWorkingCopy package asString