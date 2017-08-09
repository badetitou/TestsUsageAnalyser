initialize-release
privacyChange: anAnnouncement
	Privacy sendDiagnosticsAndUsageData
		ifTrue: [ self recordMeta.
			self tuaCore enable ]
		ifFalse: [ self tuaCore disable ]