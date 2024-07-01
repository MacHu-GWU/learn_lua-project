#!/usr/bin/env lua

local pythonDict = {
    [100] = "a",
    [200] = "b",
    [300] = "3",
}

--[[
输出:

key = 300, value = 3, arg3 = nil
key = 100, value = a, arg3 = nil
key = 200, value = b, arg3 = nil
--]]
print("===== pairs =====")
for arg1, arg2, arg3 in pairs(pythonDict) do
    print(string.format("key = %s, value = %s, arg3 = %s", arg1, arg2, arg3))
end

--[[
输出: (无输出)
解释: 由于这个表没有使用整数索引, ipairs 不会遍历任何元素.
--]]
print("===== ipairs =====")
for arg1, arg2, arg3 in ipairs(pythonDict) do
    print(string.format("key = %s, value = %s, arg3 = %s", arg1, arg2, arg3))
end
