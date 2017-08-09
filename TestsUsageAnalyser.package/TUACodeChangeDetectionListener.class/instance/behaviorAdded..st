announcement handling
behaviorAdded: anAnnouncement 
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromBehaviorAddedAnnouncement: anAnnouncement)