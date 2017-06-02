tuadTools := TUADTools default.
tuadTools download.

data := tuadTools unpackDirectory.
data := tuadTools sort: data.
data := tuadTools dispatchByUser: data.

data := (data at: 'd9a7fe4f-f108-0d00-9e53-8d69039aabe5').
data := tuadTools sort: data.
(data at: 15) unpackedData .