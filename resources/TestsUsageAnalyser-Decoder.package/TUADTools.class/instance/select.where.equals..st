as yet unclassified
select: anOrderedCollectionOfEvents where: anKey equals: aValue
	^anOrderedCollectionOfEvents
		select: [ :a | 
			(((a at: 1) at: anKey ifAbsent: [ "Do nothing" ]) = aValue) ]