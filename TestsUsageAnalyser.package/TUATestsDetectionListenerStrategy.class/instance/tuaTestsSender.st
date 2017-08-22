private
tuaTestsSender
	^ testSender ifNil: [ testSender := TUATestsSender new ] 