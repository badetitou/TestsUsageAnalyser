Extension { #name : #Object }

{ #category : #'*TestsUsageAnalyser' }
Object >> dataForTestUsageAnalyser [ 
 
  ^ Dictionary newFromPairs: { 
    #class . self class name obfuscatedIfNecessary }
]
