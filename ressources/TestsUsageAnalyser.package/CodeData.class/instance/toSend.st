accessing
toSend
	|firstLevel |
	
	firstLevel := Dictionary new.
	firstLevel at: 'userId' put: (MD5 hashMessage: (Unicode toUppercaseString: Author uniqueInstance fullName)) asString.
	firstLevel at: 'timestamps' put: DateAndTime now asString.
	firstLevel at: 'objectAffected' put: self objectAffected.
	firstLevel at: 'snapshot' put: self modificationDetails.
	firstLevel at: 'actionType' put: self actionType.
	firstLevel at: 'commits' put: 'TODO Find the number of the commit'.
	^firstLevel