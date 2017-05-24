events
recordAnnouncement: anAnnouncement
	"Aware with the privacy"
	Privacy sendDiagnosticsAndUsageData ifFalse: [ ^ self ].	
	(anAnnouncement respondsTo: #dataForTUA) ifTrue: [
		[ self add:
			(anAnnouncement dataForTUA
				at: #obfuscated put: Privacy sendEntityNames not;
				at: #type put: anAnnouncement type;
				yourself)
		
		] on: Error
		  do: [ :error |
				TUARecordingSettings showErrors ifTrue: [ error pass ] ] ]