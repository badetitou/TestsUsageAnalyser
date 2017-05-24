initialize-release
privacyChange: anAnnouncement
	Privacy sendDiagnosticsAndUsageData ifTrue: [ 	self recordMeta. ].
	

