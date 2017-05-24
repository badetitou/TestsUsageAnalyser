private
sendIt: aEntity
	TUAAnnouncer uniqueInstance announce: (
		TUAEvent new
			type: #testData;
			entity: aEntity;
			yourself
	).