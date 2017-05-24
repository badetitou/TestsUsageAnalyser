action
recordMeta
	[ GTEventCollector new
	category: #testsUsageAnalyserEvent;
	addIfAvailable: {
		#type        -> #MetaData.
		#timestamp   -> DateAndTime now.
		#versionCode -> (MonticelloRepositoryBrowser allManagers sort: [ :a :b | a asString <= b asString ]).
		#dataVersion -> TUAEventCollector dataVersion.
		} asDictionary;
	register
	] on: Error
	  do: [ :error | TUARecordingSettings showErrors ifTrue: [ error pass ] ]