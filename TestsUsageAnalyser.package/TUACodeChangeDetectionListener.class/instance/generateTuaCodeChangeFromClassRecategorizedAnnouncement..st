announcement handling
generateTuaCodeChangeFromClassRecategorizedAnnouncement: anAnnouncement
	^ self tuaCodeData
				affectedObject: (self getAffectedObjectFromAnnouncement: anAnnouncement);
				actionType: #classRecategorized;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement classAffected definition