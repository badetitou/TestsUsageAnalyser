accessing
toSend
	| aDictionnary |
	aDictionnary := Dictionary new.
	aDictionnary
		at: 'userId' put: author;
		at: 'startDate' put: self startDate asString;
		at: 'endDate' put: self endDate asString;
		at: 'type' put: self type;
		at: 'testClasses' put: (self testClasses collect: #toSend).
	^ aDictionnary