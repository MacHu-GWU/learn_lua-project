#!/usr/bin/env lua

--[[
pairs:

- 用于遍历表中的所有键值对
- 遍历顺序不确定
- 可以处理任何类型的键（包括字符串、数字等）

ipairs:

- 用于遍历数组部分（即使用连续整数索引的部分）
- 按照索引的数字顺序遍历
- 遇到 nil 值或非整数键时停止
--]]

local pythonDict = {
    a = 100,
    b = 200,
    c = 300,
}

--[[
可能的输出 (顺序可能不同):

key = a, value = 100, arg3 = nil
key = c, value = 300, arg3 = nil
key = b, value = 200, arg3 = nil
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
