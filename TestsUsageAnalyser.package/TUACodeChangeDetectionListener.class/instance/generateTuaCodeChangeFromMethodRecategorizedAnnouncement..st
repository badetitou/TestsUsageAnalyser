announcement handling
generateTuaCodeChangeFromMethodRecategorizedAnnouncement: anAnnouncement 
	^ self tuaCodeData
				affectedObject: (self getAffectedMethodClassFromAnnouncement: anAnnouncement);
				actionType: #methodRecategorized;
				package: anAnnouncement methodPackage asString;
				commitID: (self getCommitIdFromAnnouncement: anAnnouncement);
				modificationDetails: anAnnouncement newProtocol asString