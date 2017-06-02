as yet unclassified
sort: anArrayOfGTEventAnnouncement
	^anArrayOfGTEventAnnouncement sort: [ :a :b | a timestamp <= b timestamp  ]