#!/usr/bin/env lua

local pythonDict = {
    [1] = "a",
    [2] = "b",
    [3] = "c",
}

print("===== pairs =====")
for arg1, arg2, arg3 in pairs(pythonDict) do
    print(string.format("key = %s, value = %s, arg3 = %s", arg1, arg2, arg3))
end

--[[
由于该表采用了整数索引, 所以可以用 ipairs. 输出:

key = 1, value = a, arg3 = nil
key = 2, value = b, arg3 = nil
key = 3, value = c, arg3 = nil
--]]
print("===== ipairs =====")
for arg1, arg2, arg3 in ipairs(pythonDict) do
    print(string.format("key = %s, value = %s, arg3 = %s", arg1, arg2, arg3))
end
