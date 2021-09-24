% there is a PHP implementation in Erlang:
% https://github.com/bragful/ephp

count(A) ->
	% get length of list
	length(A).

array_reverse(A) ->
	lists:reverse(A).

array_filter(MapOrIter,Pred) ->
	lists:filter(Pred, MapOrIter).

array_map(MapOrIter,Pred) ->
	% this is for lists
	lists:map(Pred, MapOrIter).
	% use maps:map(Fun,MapOrIter) for maps

array_merge(A,B) ->
	%this is for lists
	lists:append([A,B]).
	% use maps:merge(Map1,Map2) to merge maps

array_intersect(Map1,Map2) ->
	return maps:intersect(Map1,Map2).

sort(A) ->
	lists:sort(A).

strval(A) ->
	% to do: check the type to decide which function to call
	integer_to_list(A).

pow(A,B) ->
	math:pow(A,B).

sin(A) ->
	math:sin(A).
	
cos(A) ->
	math:cos(A).
	
tan(A) ->
	math:tan(A).

asin(A) ->
	math:asin(A).
	
acos(A) ->
	math:acos(A).
	
atan(A) ->
	math:atan(A).

exp(A) ->
	math:exp(A).

strlen(A) -> length(A).

strip(A) ->
	string:strip(A, both).
	
strrchr(Haystack, Needle) ->
	string:str(Haystack, Needle).

rstr(Haystack, Needle) ->
	string:rstr(Haystack,Needle).
	
substr(String,Offset,Length) ->
	string:slice(String,Offset,Length).

substr(String,Offset) ->
	string:slice(String,Offset).
	
strtolower(A) ->
	string:lowercase(A).

strtoupper(A) ->
	string:uppercase(A).
	
implode(Separator,Array) ->
	lists:join(Separator,Array).

strpos(Haystack,Needle) ->
	Partial_string = string:find(String,SearchPattern),
	if(Partial_string = nomatch) ->
		false;
	true ->
		strlen(Haystack) - strlen(Partial_string)
	end.
	
in_array(Needle,Haystack) ->
	lists_member(Needle,Haystack).

array_slice(Array,Offset,Length) ->
	lists:sublist(Array,Offset,Length).

array_slice(Array,Offset) ->
	lists:sublist(Array,count(Array)-Offset).

array_reduce(Array,Callback,Initial) ->
	lists:foldr(Callback,Initial,Array).

is_array(A) -> lists:is_array(A).

array_key_exists(Key,Array) ->
	maps:is_key(Key,Array).

array_keys(Array) ->
	maps:keys(Array).

max(Array) ->
	lists:max(Array).

min(Array) ->
	lists:min(Array).

array_sum(Array) ->
	lists:sum(Array).

% use string:lexemes for explode(separator,string)

% use maps:keys(Map) for array_keys(array)
