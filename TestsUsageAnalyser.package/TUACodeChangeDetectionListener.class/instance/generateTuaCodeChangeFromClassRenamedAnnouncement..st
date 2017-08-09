announcement handling
generateTuaCodeChangeFromClassRenamedAnnouncement: anAnnouncement 
	^ self tuaCodeData
				affectedObject: anAnnouncement oldName asString;
				actionType: #classRenamed;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement newName asString