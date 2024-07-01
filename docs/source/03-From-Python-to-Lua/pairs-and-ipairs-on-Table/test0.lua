#!/usr/bin/env lua

--[[
pairs 和 ipairs 的常见用法.
--]]


--[[
可能的输出 (顺序可能不同):

key = a, value = 100, arg3 = nil
key = c, value = 300, arg3 = nil
key = b, value = 200, arg3 = nil
--]]
print("===== pairs =====")
local pythonDict = {a = 100, b = 200, c = 300}
for key, value in pairs(pythonDict) do
    print(string.format("key = %s, value = %s", key, value))
end

--[[
输出 (Lua 中 index 是从 1 开始的):

index = 1, value = a
index = 2, value = b
index = 3, value = c
--]]
print("===== ipairs =====")
local pythonList = {"a", "b", "c"}
for index, value in ipairs(pythonList) do
    print(string.format("index = %s, value = %s", index, value))
end
