operation
workingCopyIdOf: aWorkingCopy
	^ aWorkingCopy versionInfo ifNil: [ nil ] ifNotNil: [ aWorkingCopy versionInfo id ]