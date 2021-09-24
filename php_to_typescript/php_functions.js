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
	static replace(search,subject,replace){
		return subject.replaceAll(search,replace);
	}
	static implode(separator,array){
		return array.join(separator);
	}
	static join(separator,array){
		return implode(separator,array);
	}
	static explode(separator,string){
		return string.split(separator);
	}
	static floatval(a){
		return parseInt(a);
	}
	static strval(a){
		return toString(a);
	}
	static substr(string,offset,length){
		return string.substring(offset,offset+length);
	}
	static strpos(string haystack, string needle){
		let to_return = haystack.indexOf(needle);
		if(to_return === -1) return false;
		else return to_return;
	}
	static sort(a){
		a.sort();
	}
	static array_push(a,b){
		return a.push(b);
	}
	static rand_array(a){
		return a[Math.floor(Math.random() * a.length)];
	}
	static shuffle(array){
		for (let i = array.length - 1; i > 0; i--) {
		return a.concat(b);
	}
			const j = Math.floor(Math.random() * (i + 1));
			[array[i], array[j]] = [array[j], array[i]];
		}
	}
	static random(){
		return Math.random();
	}
	static array_merge(a,b){
	static array_intersect(){
		var result = arguments[0];
		for(const i of arguments){
			result = i.filter(value => result.includes(value))
		}
		return result;
	}
	static array_filter(array, callback){
		return array.filter(callback);
	}
	static in_array(needle,haystack){
		return haystack.includes(needle);
	}
	static array_search(needle,haystack){
		return haystack.indexOf(needle);
	}
	static min(){
		return Math.min(arguments);
	}
	static max(){
		return Math.max(arguments);
	}
	static array_shift(a){
		return a.shift();
	}
	static array(...args){
		return args;
	}
	static call_user_func_array(callback,args){
		return callback.apply(this, args);
	}
	static json_encode(a){
		return JSON.stringify(a);
	}
	static json_decode(a){
		return JSON.parse(a);
	}
	static trim(a){
		return a.trim();
	}
	static array_unique(a){
		// from https://stackoverflow.com/questions/1960473/get-all-unique-values-in-a-javascript-array-remove-duplicates
		return = a.filter(function(value, index, self) {return self.indexOf(value) === index;});
	}
	static strrpos(haystack,needle){
		return haystack.lastIndexOf(needle);
	}
	static get_object_vars(a){
		return Object.values(a);
	}
	static array_splice(){
		let array = arguments[0];
		let offset = arguments[1];
		let length = arguments[2];
		let length = arguments[2];
	}
	static array_sum(a,b){
		// this answer is from
		return [1, 2, 3, 4].reduce((a, b) => a + b, 0);
	}
	static get_class(a){
		return.constructor.name;
	}
}
