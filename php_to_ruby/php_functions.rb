#ruby to php
def strtolower(a) return a.downcase end
def strtolower(a) return a.upcase end
def isset(a) return defined? a end
def is_array(a) return a.kind_of?(Array) end
def array_reverse(a) return a.reverse() end
def array_reduce(array,callback) return array.reduce(callback) end
def is_array(a) return a.kind_of?(Array) end

def strval(a)
# convert string to number
end

def echo(a)
puts(a)
end

def array_push(a,b)
return a.push!(b)
end

def array_pop(a)
return a.pop!()
end

def array_keys(a)
return a.keys
end

def array_key_exists(a)
return a.key? a
end

def shuffle(a)
a.shuffle!
end

def count(a)
	return a.length()
end

def array_rand(a)
	return a.sample
end

def array_merge(a,b)
	return a.concat(b)
end

def in_array(needle,haystack)
	return haystack.include? needle
end

def array_reverse(a)
	return a.reverse()
end

def array_search(needle,haystack)
	return haystack.index { |needle| ['b', 'c'].include?(needle) }
end

def array_intersect(a,b)
	return a & b
end

def array_shift(a)
	return a.shift()
end

def str_ends_with(haystack,needle)
	return haystack.end_with? needle
end

def str_starts_with(haystack,needle)
	return haystack.start_with? needle
end

# from https://rosettacode.org/wiki/Count_occurrences_of_a_substring#Ruby
def substr_count str, subStr
    return str.scan(subStr).length
end

def trim(a)
	return a.strip
end

def json_decode(a)
	return JSON.parse(a)
end

def strrpos(haystack,needle)
	return haystack.rindex(needle)
end

def array_values(a)
	return a.values
end

def class_name(a)
	return a.class.name
end

# use str.scan(subStr).length for substr_count
