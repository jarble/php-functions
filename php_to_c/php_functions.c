//using GNU C extensions

//to do: fix array count

//do gettype using type-generic expressions
    // https://stackoverflow.com/questions/7256203/how-to-implement-a-generic-macro-in-c


#include <stdio.h>
#include <math.h>
#include "map.h"

#define var __auto_type

#define array(b,...) ({typeof(b) a[] = {b,__VA_ARGS__}; a;})

#define count(arr) (int)(sizeof(arr)/sizeof(arr[0]))

#define array_map(func, arr) ({typeof(func(arr[0])) arr1[count(arr)]; for(int i = 0; i < count(arr); i++){arr1[i] = func(count(arr));} arr1;})

#define array_merge(a,b) ({typeof(a[0]) c[count(a)+count(b)]; for(int i = 0; i < count(a); i++){c[i] = a[i];} for(int i = count(a); i < count(c); i++){c[i] = b[i-count(a)];} c;})

#define struct_declare_(a, b) b
#define struct_member(a, b) typeof(b) a;
#define struct_declare(...) \
	({ \
	struct this { MAP_PAIR(struct_member,__VA_ARGS__) }; \
	struct this this = {MAP_PAIR_LIST(struct_declare_,__VA_ARGS__)}; \
	this; \
	})



#define echo(X) printf(_Generic((X), \
	int: "%d\n", \
	double: "%f\n", \
	char*: "%s" \
),X)

#define array_reverse(a) ({ \
	var size1 = count(a); \
	typeof(a[0]) new_arr[size1]; \
	for(int i = 0;i < size1;i++){ \
		new_arr[i] = a[size1-i]; \
	} \
	new_arr; \
})

int main() {
   var a = array_merge(array(1.0,2.0),array(3.0,4.0));
   var b = array_map(cos,array_map(sin,a));
   var Thing = struct_declare(a,3,b,4);
   var Thing1 = struct_declare(a,Thing,b,array(3,3),thing,"Hello!");
   echo(1.);
   echo(1);
   echo(Thing1.b[0]);
   echo(b[0]);
   echo(count(a));
   echo(count(array_reverse(array(1,2,3))));
   echo(count(array(1,2,3,4)));
   
   #define case1
   
   //var g = ({typeof(1) a[] = {1,2,3,4,5}; a;});
   //echo(count(g));
   return 0;
}

//to do: define a macro to create type-inferred structs
//do this using a map macro: https://github.com/swansontec/map-macro

/*

__auto_type str1 = ({
struct str1 {
   typeof(1) a;
   typeof(2) b;
   typeof(3) c;
};
struct str1 str1 = {1,2,3};
str1;
});
*
*/
