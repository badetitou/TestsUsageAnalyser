announcement handling
methodRecategorized: anAnnouncement
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMethodRecategorizedAnnouncement: anAnnouncement)