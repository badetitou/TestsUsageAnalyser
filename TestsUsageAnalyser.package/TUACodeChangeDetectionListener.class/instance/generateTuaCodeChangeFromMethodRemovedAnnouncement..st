announcement handling
generateTuaCodeChangeFromMethodRemovedAnnouncement: anAnnouncement 
	^ self tuaCodeData
				affectedObject: (self getAffectedMethodClassFromAnnouncement: anAnnouncement);
				actionType: #methodRemoved;
				package: anAnnouncement methodPackage asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement methodRemoved asString