--[[
这是一个在 Lua 中实现面向对象的例子. 我们将用 Lua 实现如下功能:

1. 定义一个类
2. 类有属性
3. 类有方法
4. 创建一个实例
5. 调用实例的方法

基本上下面这段代码类似于 Python 中的这段代码:

    class Person:
        def __init__(name: str):
            self.name = name

        def greeting(self):
            print(f"Hello, I am {self.name}")

    alice = Person(name="Alice")
    alice.greeting()
--]]

-- 定义 Person "类"
-- 1. 我们首先创建一个表 Person, 这个表将作为我们的"类".
local Person = {}
-- 2. Person.__index = Person 这行代码设置元表的 __index 字段,
-- 这允许实例访问 Person 表中定义的方法.
Person.__index = Person

-- 构造函数
-- 3. Person.new 函数相当于 Python 中的 __init__ 方法. 它创建一个新的表 (实例),
-- 设置其元表为 Person, 然后初始化属性.
-- 用 ${类名}.${方法名} 的方式定义的方法类似于 Python 中的 classmethod
function Person.new(name)
    -- 4. setmetatable({}, Person) 创建一个新表并将 Person 设置为其元表.
    -- 这使得新创建的对象能够访问 Person 中定义的方法.
    local self = setmetatable({}, Person)
    self.name = name
    return self
end

-- 方法
-- 5. 我们使用 function Person:greeting() 语法来定义方法. 这等同于
-- function Person.greeting(self)，其中 self 是隐式传递的.
function Person:greeting()
    print("Hello, I am " .. self.name)
end

-- 创建实例
-- 6. 创建实例时, 我们调用 Person.new("Alice"), 这相当于 Python 中的 Person(name="Alice").
local alice = Person.new("Alice")

-- 调用方法
-- 7. 调用方法使用 alice:greeting(), 这等同于 Python 中的 alice.greeting().
alice:greeting()  -- 输出: Hello, I am Alice

-- 这种实现方式提供了类似 Python 的面向对象编程体验. 你可以轻松地添加更多方法或属性.
