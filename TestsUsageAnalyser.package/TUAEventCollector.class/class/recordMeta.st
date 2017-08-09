action
recordMeta
	[ GTEventCollector new
		category: self eventCategory;
		url:
			self tuaRecordingSettings url;
		addIfAvailable:
			{('userId'
				-> (MD5 hashMessage: (Unicode toUppercaseString: Author fullName)) hex).
			('type' -> #MetaData).
			('timestamp' -> DateAndTime now).
			('versionCode' -> self versionCode).
			('tuaEventFormatVersion' -> self dataVersion)} asDictionary;
		register ]
		on: Error
		do: [ :error | 
			TUARecordingSettings showErrors
				ifTrue: [ error pass ] ]