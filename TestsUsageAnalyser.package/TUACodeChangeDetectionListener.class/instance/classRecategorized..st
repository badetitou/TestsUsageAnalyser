announcement handling
classRecategorized: anAnnouncement
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromClassRecategorizedAnnouncement: anAnnouncement)