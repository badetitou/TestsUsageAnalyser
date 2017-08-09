announcement handling
mcWorkingCopyDeleted: anAnnouncement
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromMcWorkingCopyDeletedAnnouncement: anAnnouncement)