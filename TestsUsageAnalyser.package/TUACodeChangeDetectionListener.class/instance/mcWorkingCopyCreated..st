announcement handling
mcWorkingCopyCreated: anAnnouncement
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMcWorkingCopyCreatedAnnouncement: anAnnouncement)