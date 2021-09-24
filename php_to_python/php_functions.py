
import platform
print(platform.python_version())
from pscript import py2js
#python to php
import random

def is_callable(a):
	return callable(a)
def strtoupper(a):
	return a.upper()
def strtolower(a):
	return a.lower()
def trim(a):
	return a.strip()
def array_key_exists(a):
	return key in array
def str_contains(haystack,needle):
	return needle in haystack
def strval(a):
	return str(a)
def str_replace(search,replace,subject):
	return subject.replace(search,replace)

def echo(a):
	print(a)
def strpos(haystack, needle):
	return haystack.find(needle)
def sort(a):
	return a.sort()
def shuffle(a):
	random.shuffle(a)
def random(a,b):
	return random.randint(a,b)

def array_merge(a,b):
	return a + b

def array_intersect(a,b):
	return list(set(a) & set(b))

def array_reduce(array,callback):
	return functools.reduce(callback,array)

def explode(separator,string):
	return string.split(separator)

def json_encode(a):
	return JSON.dumps(a)
	
def json_decode(a):
	return JSON.loads(a)

def array_unique(a):
	return list(set(a))

def substr_count(haystack,needle):
	return haystack.count(needle)

def strrpos(haystack,needle):
	return haystack.rindex(needle)

def get_object_vars(a):
	return a.values()

def gettype(A):
	if type(A) == "list":
		return "array"
	elif type(A) == bool:
		return "boolean"
	elif type(A) == str:
		return "string"
	elif type(A) == int:
		return "integer"
	elif type(A) == float:
		return "double"
	elif A == None:
		return "NULL"
	
def is_null(A):
	return A == None

def array_diff(a,b):
	return list(set(a) - set(b))

def array_search(needle,haystack):
	# do this if the haystack is an array
	return needle.index(haystack)

def array_sum(a):
	return sum(a)

def class_name(a):
	return type(a).__name__

# use "ababababab".count("abab") for substr_count
