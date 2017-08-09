announcement handling
behaviorModified: anAnnouncement
	self tuaCodeSender
		send:
			( self generateTuaCodeChangeFromBehaviorModifiedAnnouncement: anAnnouncement ).