announcement handling
generateTuaCodeChangeFromMethodModifiedAnnouncement: anAnnouncement 
	^ self tuaCodeData
				affectedObject: (self getAffectedMethodClassFromAnnouncement: anAnnouncement);
				actionType: #methodModified;
				package: anAnnouncement methodPackage asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement newMethod asString