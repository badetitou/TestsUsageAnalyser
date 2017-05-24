actions
dataForTUA

	^ super dataForTUA
		at: #class put: self class name;
		at: #entity put: entity;
		at: #dataVersion put: TUAEventCollector dataVersion;
		yourself