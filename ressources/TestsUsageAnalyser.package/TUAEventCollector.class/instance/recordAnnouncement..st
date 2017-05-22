as yet unclassified
recordAnnouncement: anAnnouncement
	Privacy sendDiagnosticsAndUsageData ifFalse: [ ^ self ].	
	(anAnnouncement respondsTo: #dataForTUA) ifTrue: [
		[ self add:
			(anAnnouncement dataForTUA
				at: #obfuscated put: Privacy sendEntityNames not;
				at: #timestamp  put: DateAndTime now;
				yourself)
		
		] on: Error
		  do: [ :error |
				TUARecordingSettings showErrors ifTrue: [ error pass ] ] ]