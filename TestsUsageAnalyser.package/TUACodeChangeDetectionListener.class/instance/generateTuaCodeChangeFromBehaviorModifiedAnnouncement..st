announcement handling
generateTuaCodeChangeFromBehaviorModifiedAnnouncement: anAnnouncement 
	^ self tuaCodeData
				affectedObject: (self getAffectedObjectFromAnnouncement: anAnnouncement);
				actionType: #behaviorModified;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement classAffected definition