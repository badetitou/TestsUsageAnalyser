events
recordAnnouncement: anAnnouncement
	"Aware with the privacy"

	Privacy sendDiagnosticsAndUsageData
		ifFalse: [ ^ self ].
	(anAnnouncement respondsTo: #dataForTestUsageAnalyser)
		ifTrue: [ [ self
				add:
					(anAnnouncement dataForTestUsageAnalyser
						at: #obfuscated put: Privacy sendEntityNames not;
						at: #type put: anAnnouncement type;
						at: #timestamps put: DateAndTime now asString;
						yourself) ]
				on: Error
				do: [ :error | 
					self class tuaRecordingSettings showErrors
						ifTrue: [ error pass ] ] ]