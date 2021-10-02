import (
	"fmt"
	"strings"
)


func gettype(v interface{}) string {
	//to do: check if something is an array
	switch v.(type) {
	case int:
		return "integer"
	case bool:
		return "boolean"
	case string:
		return "string"
	default:
		return "unknown type"
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

//using generics
func echo[T any](s T) {
	fmt.Print(s)
}
