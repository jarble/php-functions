--lua to php

-- more translated functions here: https://github.com/andycai/kodelua/blob/master/kode/ext/string.lua

function strtoupper(a) return string.upper(a) end
function strtoupper(a) return string.lower(a) end
function is_array(a) return type(x)=="table" end
function strlen(a) return string.len(a)
function str_starts_with(haystack, needle) return string.starts(haystack, needle) end
function str_ends_with(haystack, needle) return string.ends(haystack, needle) end

function explode(sep, inputstr)
		-- this is from https://stackoverflow.com/questions/1426954/split-string-in-lua
        if sep == nil then
                sep = "%s"
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end

function implode(separator,array)
	return table.concat(array,separator)
end

function strpos(haystack,needle)
	return string.find(haystack,needle,1,true)
end

function substr(str,offset,length)
   return string.sub(str,offset,length)
end

function strrev(a)
	return string.reverse(a)
end

function strval(a)
	return tostring(a)
end

function array_pop(a)
	return table.remove(a)
end

function array_push(a,b)
	return table.insert(a,b)
end

function array_keys(tab)
	--from https://stackoverflow.com/a/12674376/975097
	local keyset={}
	local n=0

	for k,v in pairs(tab) do
	  n=n+1
	  keyset[n]=k
	end
	return keyset
end

function shuffle(array)
	--from https://stackoverflow.com/questions/17119804/lua-array-shuffle-not-working
    local n, random, j = table.getn(array), math.random
    for i=1, n do
        j,k = random(n), random(n)
        array[j],array[k] = array[k],array[j]
    end
    return array
end

function count(a)
	return #a
end

function sizeof(a)
	return count(a)
end

function array_merge(t1,t2)
	-- from https://stackoverflow.com/questions/1410862/concatenation-of-tables-in-lua
    for i=1,#t2 do
        t1[#t1+1] = t2[i]
    end
    return t1
end

function array_intersect(v1,v2)
	-- from https://stackoverflow.com/questions/18107838/taking-common-elements-from-2-vectors-in-lua
	local v3 = {}
	for k1,v1 in pairs(v1) do
		for k2,v2 in pairs(v2) do
			if v1 == v2 then
				v3[#v3 + 1] = v1
			end
		end
	end
	return v3
end


function call_user_func_array(callback,args)
	return callback(table.unpack(args))
end


function trim(s, pattern)
	-- from https://github.com/andycai/kodelua/blob/master/kode/ext/string.lua
	pattern = pattern or "%s"
	return string.gsub(s,"^" .. pattern .. "*(.-)" .. pattern .. "*$", "%1")
end

function ltrim(s, pattern)
	-- from https://github.com/andycai/kodelua/blob/master/kode/ext/string.lua
	pattern = pattern or "%s"
	return string.gsub(s,"^[" .. pattern .. "]*", "")
end

function rtrim(s, pattern)
	-- from https://github.com/andycai/kodelua/blob/master/kode/ext/string.lua
	pattern = pattern or "%s"
	local n = #s
	while n > 0 and s:find("^" .. pattern, n) do n = n -1 end
	return string.sub(s,1, n)
end

function string.strtr(...)
	-- from https://github.com/andycai/kodelua/blob/master/kode/ext/string.lua
	local str, from, to, replace_pairs
	str = select(1, ...) or ''
	replace_pairs = select(2, ...)
	if type(replace_pairs) == "table" then
		for from, to in pairs(replace_pairs) do
			str = string.strtr(str, from, to)
		end
		return str
	else
		from = select(2, ...)
		to = select(3, ...)
		return string.gsub(str, from, to)
	end
end
