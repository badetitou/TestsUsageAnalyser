class initialization
initialize
	Privacy sendDiagnosticsAndUsageData: true.
	SessionManager default
		register: (ClassSessionHandler forClassNamed: self name)
		inCategory: SessionManager default toolsCategory  
		atPriority: SessionManager default defaultPriority + 1000.
	self recordMeta.

	uniqueInstance := WeakArray new: 1.
	self uniqueInstance initialize.
	TUAAnnouncer uniqueInstance unsubscribe: self.
	TUAAnnouncer uniqueInstance weak when: TUAEvent send: #recordAnnouncement: to: self.
	
	SystemAnnouncer uniqueInstance unsubscribe: self.
	SystemAnnouncer uniqueInstance weak when: PrivacyChangedAnnoucement send: #privacyChange to: self.