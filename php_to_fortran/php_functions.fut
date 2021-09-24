let array_filter array callback = 
	filter callback array

let array_map array callback =
	map callback array

let array_reduce array callback =
	reduce callback array

let array_reverse arr = arr[::-1] 
