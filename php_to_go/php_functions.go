import (
	"fmt"
	"strings"
	"reflect"
)




func gettype(v interface{}) string {
        rt := reflect.TypeOf(v)
        switch rt.Kind() {
        case reflect.Slice:
            return "array";
        case reflect.Array:
            return "array";
        default:
			switch v.(type) {
			case int:
				return "integer"
			case bool:
				return "boolean"
			case string:
				return "string"
			case nil:
				return "NULL"
			default:
				return "unknown type"
			}
        }
}
func strtolower(s string) string {
	return strings.ToLower(s)
}

func strtoupper(s string) string {
	return strings.ToUpper(s)
}

func strpos(haystack string,needle string) int {
	return strings.Index(haystack,needle)
}

func strlen(s string) int{
	return len(s)
}

func str_starts_with(haystack string, needle string) bool{
	return strings.HasPrefix(haystack,needle)
}

func str_ends_with(haystack string, needle string) bool{
	return strings.HasSuffix(haystack,needle)
}

func str_repeat(str string,times int) string{
	return strings.Repeat(str,times)
}

//using generics
func array_push[T any](a []T, b ...T) []T {
	return append(a,b...)
}

func echo(s interface{}) {
	fmt.Print(s)
}
