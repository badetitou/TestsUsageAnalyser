initialization
initialize
	super initialize.
	self
		category: #testsUsageAnalyserEvents;
		updateAnnouncementBlock: [ :aGTEventAnnouncement |
			aGTEventAnnouncement at: #tuaEventFormatVersion put: 0.3 ]