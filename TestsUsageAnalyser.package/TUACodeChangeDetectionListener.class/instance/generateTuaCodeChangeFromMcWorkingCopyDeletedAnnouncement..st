announcement handling
generateTuaCodeChangeFromMcWorkingCopyDeletedAnnouncement: anAnnouncement 
	^ self tuaCodeData
				affectedObject: (self getAffectedPackageFromAnnouncement: anAnnouncement);
				actionType: #mcWorkingCopyDeleted:;
				package: anAnnouncement package asString;
				commitID: (self workingCopyIdOf: anAnnouncement workingCopy);
				modificationDetails: anAnnouncement package asString