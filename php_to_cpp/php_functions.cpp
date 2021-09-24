// to initialize an array:
//auto v = std::vector{1, 2, 3, 4};

// to initialize a map:
/*
   auto x  = std::map 
  {
    std::make_pair (42, "foo"),
    std::make_pair (3, "bar")
  };
*/


#include <iostream>
#include <map>
#include <numeric>
#include <vector>
#include <algorithm>
#include <string>

auto strpos(auto haystack, auto needle){
	return haystack.find(needle);
}
auto substr(auto a,int b,int c){
	return a.substr(b,c);
}
void echo(auto a){
	std::cout << a << "\n";
}
auto array_sum(auto a){
    return std::accumulate(a.begin(), a.end(), 0);
}

auto count(auto a){
	return a.size(); //for vectors
}
