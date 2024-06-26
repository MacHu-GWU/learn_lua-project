#!/usr/bin/env lua

local Rectangle = {
    width = 0,
    height = 0,
}

--[[
这里的 Rectangle:new 是一种语法糖, 它可以省略第一个参数 self.
--]]
function Rectangle:new(arg)
    rect = {}
    setmetatable(rect, self)
    self.__index = self
    rect.width = arg.width or 0
    rect.height = arg.height or 0
    return rect
end

function Rectangle:area()
    return self.width * self.height
end

print("run: Rectangle:new({width=3, height=4})")
rect1 = Rectangle:new({width=3, height=4})
print(string.format("rect1.width = %s", rect1.width))
print(string.format("rect1:area() = %s", rect1:area()))
