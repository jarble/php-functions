import (
	"fmt"
	"strings"
)

func strtolower(s string) string {
	return strings.ToLower(s)
}

func strtoupper(s string) string {
	return strings.ToUpper(s)
}

func explode(s string) string {
   //to do
}

func strpos(haystack string,needle string) {
	return strings.index(haystack,needle)
}

func strlen(s string){
	return len(s)
}

func str_starts_with(haystack string, needle string) string{
	return strings.hasPrefix(haystack,needle)
}

func str_ends_with(haystack string, needle string) string{
	return strings.hasSuffix(haystack,needle)
}

func str_repeat(string str,times int){
	return strings.repeat(str,times)
}

//using generics
func echo[T any](s T) {
	fmt.Print(s)
}
