class PHP{
	static function strlen(String a):int{
		return str.length;
	}
	static function substr(String a,int length):String{
		return a.substr(length);
	}
	static function explode(String separator,String string):Array<String>{
		return string.split(separator);
	}
	/*
	
	static function strpos(String haystack,String needle):int{
		//to do
	}
	static function str_starts_with(String haystack, String needle){
		
	}
	static function str_ends_with(String haystack, String needle){
		
	}
	*/
	static function strtoupper(String a:String){
		return a.toUpperCase();
	}
	static function strtolower(String a:String){
		return a.toLowerCase();
	}
}
