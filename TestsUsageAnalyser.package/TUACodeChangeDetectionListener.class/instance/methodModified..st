announcement handling
methodModified: anAnnouncement
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMethodModifiedAnnouncement: anAnnouncement)