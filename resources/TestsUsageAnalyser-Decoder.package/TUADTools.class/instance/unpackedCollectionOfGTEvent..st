as yet unclassified
unpackedCollectionOfGTEvent: aCollectionOfGTEvent
	| collection |
	collection := OrderedCollection new.
	aCollectionOfGTEvent
		collect: [ :aGTEvent | 
			| anUnpackedGTEvent |
			anUnpackedGTEvent := aGTEvent safeUnpackedData.
			(anUnpackedGTEvent size > 0) ifTrue: [ collection add: anUnpackedGTEvent ] ].
		^collection.