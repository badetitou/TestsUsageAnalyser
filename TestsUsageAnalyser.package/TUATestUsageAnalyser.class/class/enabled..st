actions
enabled: anObject
	enabled := anObject.
	enabled
		ifFalse: [ self disable ]
		ifTrue: [ self enable ]