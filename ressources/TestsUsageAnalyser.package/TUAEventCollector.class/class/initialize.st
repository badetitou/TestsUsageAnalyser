as yet unclassified
initialize
	SessionManager default
		register: (ClassSessionHandler forClassNamed: self name)
		inCategory: SessionManager default toolsCategory  
		atPriority: SessionManager default defaultPriority + 1000.
	self recordMeta.

	uniqueInstance := WeakArray new: 1.
	TUAAnnouncer uniqueInstance unsubscribe: self.
	TUAAnnouncer uniqueInstance weak when: ReCriticEvent send: #recordAnnouncement: to: self