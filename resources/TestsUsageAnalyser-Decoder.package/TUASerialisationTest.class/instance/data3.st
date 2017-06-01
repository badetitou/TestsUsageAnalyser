as yet unclassified
data3
	^ 'OrderedCollection [
	{
		#class : #TUAEvent,
		#obfuscated : false,
		#dataVersion : 0.13,
		#type : #codeData,
		#entity : {
			''objectAffected'' : Class [ #ExpressionWatcherTest ],
			''commits'' : nil,
			''timestamps'' : ''2017-05-31T15:09:42.221693+02:00'',
			''userId'' : ''9c93cacd737848f48858a33179a1003a'',
			''snapshot'' : ''testWatchOverWhenExecuting\r\t| program expression |\r\tprogram := [\r\t\t| box |\r\t\tbox := Box new.\r\t\tbox instanceVariable:  0.\r\t\tExpressionWatcherTest classVariable: box.\r\t\t1+2.\r\t\t3+4.\r\t\t5+6.\r\t\tbox instanceVariable: 1.\r\t\t7+8.\r\t].\r\texpression := [\r\t\tExpressionWatcherTest classVariable ifNil: [ 0 ] ifNotNil: [ ExpressionWatcherTest classVariable instanceVariable ]\r\t].\r\tExpressionWatcher watchOver: expression whenExecuting: program.'',
			''actionType'' : #methodModified
		}
	}'