announcement handling
generateTuaCodeChangeFromClassCommentedAnnouncement: anAnnouncement 
	^ self tuaCodeData
				affectedObject: (self getAffectedObjectFromAnnouncement: anAnnouncement);
				actionType: #classCommented;
				package: anAnnouncement packageAffected asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement newComment asString