announcement handling
classRenamed: anAnnouncement
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromClassRenamedAnnouncement: anAnnouncement)