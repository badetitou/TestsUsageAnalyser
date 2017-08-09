class initialization
initialize
	Privacy sendDiagnosticsAndUsageData: true.
	Privacy sendEntityNames: true.
	Privacy sendSourceCode: true.
	SessionManager default
		register: (ClassSessionHandler forClassNamed: self name)
		inCategory: SessionManager default toolsCategory
		atPriority: SessionManager default defaultPriority + 1000.
	self recordMeta.
	uniqueInstance := WeakArray new: 1.
	self tuaAnnouncer unsubscribe: self.
	self tuaAnnouncer weak when: TUAAnnouncement send: #recordAnnouncement: to: self.
	SystemAnnouncer uniqueInstance unsubscribe: self.
	SystemAnnouncer uniqueInstance weak
		when: PrivacyChangedAnnoucement
		send: #privacyChange:
		to: self