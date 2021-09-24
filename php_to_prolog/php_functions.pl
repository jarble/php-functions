% these functions are built-in in SWI-Prolog

floatval(Input,Output) :- number_string(Output,Input).

strtoupper(Input,Output) :- string_upper(Input,Output).
strtolower(Input,Output) :- string_lower(Input,Output).

strlen(Input,Output) :- string_length(Input,Output).

array_merge(A,B,Output) :- append(A,B,Output). 

is_numeric(A,true) :- number(A,true).

is_callable(A,true) :- callable(A).
