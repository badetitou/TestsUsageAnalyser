as yet unclassified
initialize
	super initialize.
	self
		category: #qualityAssistantEvents;
		updateAnnouncementBlock: [ :aGTEventAnnouncement |
			aGTEventAnnouncement at: #qaEventFormatVersion put: 0.1 ]