as yet unclassified
dispatchByUser: anArrayOfGTEventAnnouncement
	| dictionnary |
	dictionnary := Dictionary new.
	anArrayOfGTEventAnnouncement do: [ :aGtEvent | 
		dictionnary at: (aGtEvent at: #computerUUID) ifAbsentPut: OrderedCollection new.
		(dictionnary at: (aGtEvent at: #computerUUID)) add: aGtEvent.
		 ].
	
	^dictionnary .