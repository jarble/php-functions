//javascript to PHP
class PHP{
	static strtoupper(a){
		return a.toUpperCase();
	}
	static strlen(a){
		return a.length;
	}
	static isset(a){
		return (typeof a !== 'undefined');
	}
	static is_string(a){
		return (typeof a === 'string');
	}
	static is_array(a){
		return Array.isArray(a);
	}

	static is_array(a){
		return Array.isArray(a);
	}
	static is_callable(a){
		return typeof(a) === 'function';
	}
	static array_map(callback,array){
		return array.map(callback);
	}
	static strrev(a){
		return a.reverse();
	}
	static array_keys(a){
		return a.keys();
	}
	static array_reverse(a){
		return a.reverse();
	}
	static array_key_exists(key,arry){
		return key in array;
	}
	static array_pop(a){
		return a.pop();
	}
	static str_starts_with(haystack,needle){
		return haystack.startsWith(needle);
	}
	static str_ends_with(haystack,needle){
		return haystack.endsWith(needle);
	}
	static str_contains(haystack,needle){
		return haystack.includes(needle);
	}
	static array_reduce(array,callback){
		return array.reduce(callback);
	}
}
