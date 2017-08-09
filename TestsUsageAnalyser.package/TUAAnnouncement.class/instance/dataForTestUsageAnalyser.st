actions
dataForTestUsageAnalyser

	^ super dataForTestUsageAnalyser
		at: #class put: self class name;
		at: #entity put: entity;
		at: #dataVersion put: TUAEventCollector dataVersion;
		yourself