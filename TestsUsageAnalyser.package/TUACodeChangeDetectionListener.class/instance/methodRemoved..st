announcement handling
methodRemoved: anAnnouncement
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMethodRemovedAnnouncement: anAnnouncement)