announcement handling
generateTuaCodeChangeFromMcWorkingCopyCreatedAnnouncement: anAnnouncement
	^ self tuaCodeData
		affectedObject: (self getAffectedPackageFromAnnouncement: anAnnouncement);
		actionType: #mcWorkingCopyCreated:;
		package: anAnnouncement package asString;
		commitID: (self workingCopyIdOf: anAnnouncement workingCopy);
		modificationDetails: anAnnouncement package asString