accessing
toSend
	|firstLevel |
	
	firstLevel := Dictionary new.
	firstLevel at: 'userId' put: (MD5 hashMessage: (Unicode toUppercaseString: Author uniqueInstance fullName)) hex.
	firstLevel at: 'timestamps' put: DateAndTime now asString.
	firstLevel at: #affectedObject put: self affectedObject.
	firstLevel at: 'snapshot' put: self modificationDetails.
	firstLevel at: 'actionType' put: self actionType.
	firstLevel at: 'commits' put: self commitID.
	firstLevel at: 'package' put: self package.
	^firstLevel