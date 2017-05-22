private
sendIt: aEntity
	TUAAnnouncer uniqueInstance announce: (
		TUAEvent new
			entity: aEntity;
			yourself
	).