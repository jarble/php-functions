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
}
