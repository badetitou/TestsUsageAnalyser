as yet unclassified
dataForTUA

	^ super dataForTUA
		at: #class put: self class name;
		at: #entity put: entity dataForTUA;
		yourself