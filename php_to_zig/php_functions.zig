const std = @import("std");

fn array_map(function: anytype,array: anytype) [array.len]@typeInfo(@TypeOf(function)).Fn.return_type.? {
    // from https://www.reddit.com/r/Zig/comments/p0id8y/higherorder_map_functions/
    var result: [array.len]@typeInfo(@TypeOf(function)).Fn.return_type.? = undefined;
    for (result) |*res ,index| {
        res.* = function(array[index]);
    }
    return result;
}

pub fn echo(a:anytype) void{
	std.debug.print(a);
}

pub fn is_bool(a:anytype):bool{
return @TypeOf(a) == bool;
}

pub fn gettype(a:anytype) []const u8{
if(@TypeOf(a) == bool){
return "boolean";
}
else if(@TypeOf(a) == i64 or @TypeOf(a) == i32 or @TypeOf(a) == comptime_int){
return "integer";
}
else if(@TypeOf(a) == f64 or @TypeOf(a) == f32 or @TypeOf(a) == comptime_float){
return "double";
}
else{ return "unknown type";}
}

pub fn count(a:anytype) i64 {
return a.len;
}
