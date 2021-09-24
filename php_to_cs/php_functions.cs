//C# to PHP
public class PHP{
	public static float sin(a){
		return Math.Sin(a);
	}
	public static float cos(a){
		return Math.Cos(a);
	}
	public static string explode(string separator, string the_string){
		return the_string.Split(separator);
	}
	public static string strlen(string a){
		return a.Length;
	}
	public static string gettype(bool a){
		return "boolean";
	}
	public static string gettype(string a){
		return "string";
	}
	public static bool is_array(object a){
		return typeof(a).IsArray;
	}
	public static string strval(object a){
		return Convert.toString(a);
	}
	public static int strpos(String haystack, String needle){
		return haystack.indexOf(needle);
	}
	public static object sort(object a){
		return Array.sort(a);
	}
	public static void echo(object a){
		Console.WriteLine(a);
	}
}
