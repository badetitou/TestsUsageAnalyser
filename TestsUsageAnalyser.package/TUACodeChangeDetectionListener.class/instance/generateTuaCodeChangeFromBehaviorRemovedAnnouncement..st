announcement handling
generateTuaCodeChangeFromBehaviorRemovedAnnouncement: anAnnouncement 
	^ self tuaCodeData
				affectedObject: (self getAffectedObjectFromAnnouncement: anAnnouncement);
				actionType: #behaviorRemoved;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement classRemoved asString