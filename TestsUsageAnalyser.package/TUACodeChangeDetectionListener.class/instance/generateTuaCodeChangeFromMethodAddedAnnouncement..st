announcement handling
generateTuaCodeChangeFromMethodAddedAnnouncement: anAnnouncement 
	^ self tuaCodeData
				affectedObject: (self getAffectedMethodClassFromAnnouncement: anAnnouncement);
				actionType: #methodAdded;
				package: anAnnouncement methodPackage asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement methodAdded asString