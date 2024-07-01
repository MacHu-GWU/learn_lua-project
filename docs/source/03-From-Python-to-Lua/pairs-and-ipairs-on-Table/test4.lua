#!/usr/bin/env lua

local pythonList = {
    "a",
    "b",
    "c"
}

--[[
输出:

key = 1, value = a, arg3 = nil
key = 2, value = b, arg3 = nil
key = 3, value = c, arg3 = nil
--]]
print("===== pairs =====")
for arg1, arg2, arg3 in pairs(pythonList) do
    print(string.format("key = %s, value = %s, arg3 = %s", arg1, arg2, arg3))
end

--[[
输出:

key = 1, value = a, arg3 = nil
key = 2, value = b, arg3 = nil
key = 3, value = c, arg3 = nil
--]]
print("===== ipairs =====")
for arg1, arg2, arg3 in ipairs(pythonList) do
    print(string.format("key = %s, value = %s, arg3 = %s", arg1, arg2, arg3))
end

--[[
对于列表, 输出就是 index 和 value, 跟 python 中的 enumerate 函数类似. 输出:

key = 1, value = a
key = 2, value = b
key = 3, value = c
--]]
print("===== ipairs =====")
for arg1, arg2 in ipairs(pythonList) do
    print(string.format("key = %s, value = %s", arg1, arg2))
end
