tuadTools := TUADTools default.
tuadTools download.

tuadTools := TUADTools default.
data := tuadTools unpackDirectory.
data := tuadTools unpackedCollectionOfGTEvent: data. 
data := tuadTools select: data where: #dataVersion equals: 0.15.
data := tuadTools dispatchByAuthorName: data