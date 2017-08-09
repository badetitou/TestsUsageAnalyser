announcement handling
behaviorRemoved: anAnnouncement
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromBehaviorRemovedAnnouncement: anAnnouncement )