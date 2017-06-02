as yet unclassified
dispatchByAuthorName: anOrderedCollectionOfEvents
	"Work from version 1.1"

	| aDictionary |
	aDictionary := Dictionary new.
	anOrderedCollectionOfEvents
		do: [ :anEventCollection | 
			| key |
			key := (anEventCollection at: 1)
				at: 'userId'
				ifAbsent: [ ((anEventCollection at: 1) at: #entity) at: 'userId' ].
			aDictionary at: key ifAbsentPut: OrderedCollection new.
			anEventCollection do: [ :banana | (aDictionary at: key) add: banana ]
			].
	^ aDictionary