announcement handling
methodAdded: anAnnouncement
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMethodAddedAnnouncement: anAnnouncement)