private
testCase: aTestMethod hasEndedStatusFrom: anAnnouncement
	"Some staff"

	aTestMethod status
		ifNil: [ (anAnnouncement testResult isError: anAnnouncement testCase)
				ifTrue: [ aTestMethod status: 'ERROR' ]
				ifFalse: [ (anAnnouncement testResult isFailure: anAnnouncement testCase)
						ifTrue: [ aTestMethod status: 'FAIL' ]
						ifFalse: [ aTestMethod status: 'PASS' ] ] ]