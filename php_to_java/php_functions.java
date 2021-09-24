import java.util.Arrays;
import java.util.concurrent.ThreadLocalRandom;
//Java to PHP
public class PHP{
	public static float sin(a){
		return Math.sin(a);
	}
	public static float cos(a){
		return Math.cos(a);
	}
	public static String[] explode(String separator, String string){
		//to do 
	}
	public static double strlen(String a){
		return a.length();
	}
	public static String gettype(String a){
		return "string";
	}
	public static String gettype(int a){
		return "int";
	}
	public static boolean gettype(boolean a){
		return "bool";
	}
	public static String strrev(String a){
		return a.reverse();
	}
	public static boolean str_ends_with(String haystack,String needle){
		return haystack.endsWith(needle);
	}
	public static boolean str_starts_with(String haystack,String needle){
		return haystack.startsWith(needle);
	}
	public static boolean is_array(Object a){
		return Object.getClass().isArray();
	}
	public static String strval(Object a){
		return String.valueOf(a);
	}
	public static double floatval(String a){
		return Double.parseDouble(a);
	}
	public static int intval(String a){
		return Integer.parseInt(a);
	}
	public static string substr(String string1, int offset, int length){
		return string1.substr(offset,offset+length);
	}
	public static string strpos(String haystack, String needle){
		return haystack.indexOf(needle);
	}
	public static Object sort(Object a){
		return Arrays.sort(a);
	}
	public static Object rand_array(Object array){
		int rnd = new Random().nextInt(array.length);
		return array[rnd];
	}
	public static double random(int min, int max){
		double to_return = ThreadLocalRandom.current().nextInt(min, max + 1);
		return to_return;
	}
	public static int strrpos(String haystack,String needle){
		return haystack.lastIndexOf(needle);
	}
	public static String str_repeat(String str,int times){
		return str.repeat(times);
	}
}
