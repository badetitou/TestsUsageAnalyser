initialization
initialize
	self enabled: (Smalltalk version = 'Pharo6.0').
	[ Smalltalk addToStartUpList: self ]
		on: Deprecation
		do: [  ]