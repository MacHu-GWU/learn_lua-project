#!/usr/bin/env lua

local pythonList = {
    1,
    2,
    3
}

--[[
输出:

key = 1, value = 1, arg3 = nil
key = 2, value = 2, arg3 = nil
key = 3, value = 3, arg3 = nil
--]]
print("===== pairs =====")
for arg1, arg2, arg3 in pairs(pythonList) do
    print(string.format("key = %s, value = %s, arg3 = %s", arg1, arg2, arg3))
end

--[[
输出:

key = 1, value = 1, arg3 = nil
key = 2, value = 2, arg3 = nil
key = 3, value = 3, arg3 = nil
--]]
print("===== ipairs =====")
for arg1, arg2, arg3 in ipairs(pythonList) do
    print(string.format("key = %s, value = %s, arg3 = %s", arg1, arg2, arg3))
end
