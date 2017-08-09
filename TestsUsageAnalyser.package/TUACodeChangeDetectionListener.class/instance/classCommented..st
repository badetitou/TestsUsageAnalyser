announcement handling
classCommented: anAnnouncement
	self tuaCodeSender
		send:
			(self generateTuaCodeChangeFromClassCommentedAnnouncement: anAnnouncement )