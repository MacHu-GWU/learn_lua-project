#!/usr/bin/env lua

local pythonList = {
    100,
    200,
    300
}

--[[
输出:

key = 1, value = 100, arg3 = nil
key = 2, value = 200, arg3 = nil
key = 3, value = 300, arg3 = nil
--]]
print("===== pairs =====")
for arg1, arg2, arg3 in pairs(pythonList) do
    print(string.format("key = %s, value = %s, arg3 = %s", arg1, arg2, arg3))
end

--[[
输出:

key = 1, value = 100, arg3 = nil
key = 2, value = 200, arg3 = nil
key = 3, value = 300, arg3 = nil
--]]
print("===== ipairs =====")
for arg1, arg2, arg3 in ipairs(pythonList) do
    print(string.format("key = %s, value = %s, arg3 = %s", arg1, arg2, arg3))
end
