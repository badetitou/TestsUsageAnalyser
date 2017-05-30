announcement handling
uuid: aWorkingCopy
	aWorkingCopy versionInfo ifNil: [ 
		 ^nil.
	] ifNotNil: [ 
		 aWorkingCopy versionInfo id
	].