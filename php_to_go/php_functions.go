//declare slices of multiple types like this:
//     s := []interface{}{1, 2, "apple", true}

import (
	"fmt"
	"strings"
	"reflect"
	"strconv"
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
func strtolower(s interface{}) string {
	return strings.ToLower(s.(string))
}

func strtoupper(s interface{}) string {
	return strings.ToUpper(s.(string))
}

func strpos(haystack interface{},needle interface{}) int {
	return strings.Index(haystack.(string),needle.(string))
}

func strlen(s interface{}) int{
	return len(s.(string))
}

func str_starts_with(haystack interface{}, needle interface{}) bool{
	return strings.HasPrefix(haystack.(string),needle.(string))
}

func str_ends_with(haystack interface{}, needle interface{}) bool{
	return strings.HasSuffix(haystack.(string),needle.(string))
}

func str_repeat(str interface{},times interface{}) string{
	return strings.Repeat(str.(string),times.(int))
}

func strval(a interface{}) string{
	return strconv.Itoa(a.(int));
}

func array_push(s []interface{},a ...interface{}) []interface{}{
	return append(s,a...);
}

func array_pop(s1 *[]interface{}) interface{}{
	s := *s1;
	i := len(s)-1 // Any valid index, however you happen to get it.
	x := s[i]
	s = append(s[:i], s[i+1:]...)
	*s1 = s;
	return x
}

func echo(s interface{}) {
	fmt.Print(s)
}

func is_string(s interface{}) bool {
	return gettype(s.(string)) == "string"
}

func explode(separator interface{}, str interface{}) []string{
	return strings.Split(str.(string),separator.(string))
}

func array_keys(mymap map[interface{}]interface{}) []interface{}{
	keys := make([]interface{}, len(mymap))
	i := 0
	for k := range mymap {
		keys[i] = k
		i++
	}
	return keys
}
