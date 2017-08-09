announcement handling
generateTuaCodeChangeFromBehaviorAddedAnnouncement: anAnnouncement 
	^ self tuaCodeData
				affectedObject: (self getAffectedObjectFromAnnouncement: anAnnouncement);
				actionType: #behaviorAdded;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement classAdded definition